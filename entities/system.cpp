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


#include <Noodle/entities/system.hpp>

using namespace ndl::es;

System::~System()
{
}

void System::entityCreated(WeakEntityPtr entity)
{
    if(keepEntity(entity))
    {
        entityKept(entity);
        mEntities.emplace(entity.lock()->id(), entity);
    }
}

void System::entityRemoved(EntityId id)
{
    if(mEntities.find(id) != mEntities.end())
    {
        entityDropped(mEntities.at(id));
        mEntities.erase(id);
    }
}

bool System::keepEntity(WeakEntityPtr /*entity*/) const
{
    return false;
}

void System::entityKept(WeakEntityPtr /*entity*/)
{

}

void System::entityDropped(WeakEntityPtr /*entity*/)
{

}

const std::map<EntityId, WeakEntityPtr>& System::entities() const
{
    return mEntities;
}

void System::draw(sf::RenderTarget &/*target*/) const
{

}

void System::update(sf::Time /*dt*/)
{

}

void System::handleEvent(const sf::Event &/*e*/)
{

}
