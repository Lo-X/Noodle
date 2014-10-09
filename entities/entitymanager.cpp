////////////////////////////////////////////////////////////
//
// Noodle - C++ game framework
// Copyright (C) 2014 Loïc Boutter (contact@loicboutter.fr)
//
// This software is provided 'as-is', without any express or implied warranty.
// In no event will the authors be held liable for any damages arising from the use of this software.
//
// Permission is granted to anyone to use this software for any purpose,
// including commercial applications, and to alter it and redistribute it freely,
// subject to the following restrictions:
//
// 1. The origin of this software must not be misrepresented;
//    you must not claim that you wrote the original software.
//    If you use this software in a product, an acknowledgment
//    in the product documentation would be appreciated but is not required.
//
// 2. Altered source versions must be plainly marked as such,
//    and must not be misrepresented as being the original software.
//
// 3. This notice may not be removed or altered from any source distribution.
//
////////////////////////////////////////////////////////////


#include <Noodle/entities/entitymanager.hpp>
#include <Noodle/entities/entity.hpp>
#include <cassert>

using namespace ndl::es;

EntityManager::EntityStorage::EntityStorage(const std::set<std::string>& attributesList)
{
    for(const auto& attribute : attributesList)
    {
        mAttributeData.emplace(attribute, std::shared_ptr<void>());
    }
}


bool EntityManager::EntityStorage::hasData(const std::string& name) const
{
    return mAttributeData.find(name) != mAttributeData.end();
}


/****************************************************************************/


EntityManager::EntityManager() :
    mNextEntity(0)
{
}

#include <iostream>
WeakEntityPtr EntityManager::createEntity(const std::set<std::string>& attributes, std::size_t group)
{
    EntityId id;
    if(!mFreeEntityIds.empty())
    {
        id = mFreeEntityIds.top();
        mFreeEntityIds.pop();
    }
    else
    {
        id = ++mNextEntity;
    }

    EntityPtr e = std::make_shared<Entity>(id, group, *this);

    mEntities.insert(std::pair<EntityId, EntityPtr>(id, e));
    mAttributes.insert(std::pair<EntityId, EntityStorage>(id, EntityStorage((attributes))));
    if(mGroups.find(group) == mGroups.end())
    {
        mGroups[group] = std::set<EntityId>();
    }
    mGroups[group].insert(id);

    return WeakEntityPtr(e);
}

WeakEntityPtr EntityManager::entity(EntityId id) const
{
    try
    {
        return mEntities.at(id);
    }
    catch(std::out_of_range)
    {
        return WeakEntityPtr();
    }
}

void EntityManager::removeEntity(EntityId id)
{
    assert(mEntities.find(id) != mEntities.end());

    mGroups[mEntities[id]->group()].erase(id);
    mAttributes.erase(id);
    mEntities.erase(id);

    mFreeEntityIds.push(id);
}

const std::set<EntityId>& EntityManager::entitiesByGroup(std::size_t group) const
{
    assert(mGroups.find(group) != mGroups.end());

    const std::set<EntityId>& set = mGroups.at(group);
    return set;
}


bool EntityManager::hasAttribute(const EntityId id, const std::string& name) const
{
    assert(mEntities.find(id) != mEntities.end());

    return mAttributes.find(id)->second.hasData(name);
}



void EntityManager::removeAllEntities()
{
    while(mEntities.size() > 0)
    {
        removeEntity(mEntities.begin()->first);
    }
}

void EntityManager::clear()
{
    mEntities.clear();
    mAttributes.clear();
    while(!mFreeEntityIds.empty()) mFreeEntityIds.pop();
    mNextEntity = 0;
}


void EntityManager::draw(sf::RenderTarget &target, sf::RenderStates states) const
{
    for(auto pair : mEntities)
    {
        pair.second->draw(target, states);
    }
}

void EntityManager::update(sf::Time dt)
{
    for(auto pair : mEntities)
    {
        pair.second->update(dt);
    }
}

