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


#ifndef ENTITYMANAGER_HPP
#define ENTITYMANAGER_HPP

#include <Noodle/noodle_global.h>
#include <SFML/Graphics/RenderTarget.hpp>
#include <SFML/System/Time.hpp>
#include <string>
#include <map>
#include <unordered_map>
#include <vector>
#include <set>
#include <stack>
#include <memory>
#include <stdint.h>

namespace ndl
{

namespace es
{

class Entity;
class System;

using EntityPtr = std::shared_ptr<Entity>;
using WeakEntityPtr = std::weak_ptr<Entity>;
using EntityId = u_int32_t;
using EntitySet = std::set<WeakEntityPtr, std::owner_less<WeakEntityPtr>>;


class NOODLESHARED_EXPORT EntityManager
{
public:
    class EntityStorage
    {
    public:
        EntityStorage(const std::set<std::string>& attributesList);
        template <class DataType>
        void            setData(const std::string& name, const DataType& value);
        template <class DataType>
        const DataType& data(const std::string& name) const;
        template <class DataType>
        DataType&       data(const std::string& name);
        bool            hasData(const std::string& name) const;

    private:
        std::unordered_map<std::string, std::shared_ptr<void>>  mAttributeData;
    };

public:
    EntityManager();

    void                addSystem(System& system);
    void                removeSystem(System& system);

    WeakEntityPtr       createEntity(const std::set<std::string>& attributes, std::size_t group = 0);
    WeakEntityPtr       entity(EntityId id) const;
    void                removeEntity(EntityId id);

    const std::set<EntityId>& entitiesByGroup(std::size_t group) const;

    template <class DataType>
    void            setAttribute(const EntityId id, const std::string& name, const DataType& value);
    template <class DataType>
    const DataType& attribute(const EntityId id, const std::string& name) const;
    template <class DataType>
    DataType&       attribute(const EntityId id, const std::string& name);
    bool            hasAttribute(const EntityId id, const std::string& name) const;

    void            removeAllEntities();
    void            clear();

private:
    EntityId                mNextEntity;
    std::stack<EntityId>    mFreeEntityIds;

    // map entities id <> entities
    std::map<EntityId, EntityPtr>     mEntities;
    // map entities id <> attributes
    std::map<EntityId, EntityStorage> mAttributes;
    // map groups <> entities
    std::map<std::size_t, std::set<EntityId>>   mGroups;
    // Systems
    std::set<System*>   mSystems;
};


}

}

#include <Noodle/entities/entitymanager.inl>

#endif // ENTITYMANAGER_HPP
