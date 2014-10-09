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


#ifndef ENTITY_HPP
#define ENTITY_HPP

#include <Noodle/noodle_global.h>
#include <Noodle/entities/entitymanager.hpp>

namespace ndl
{

namespace es
{

class NOODLESHARED_EXPORT Entity
{
public:
    Entity(EntityId id, EntityManager& manager);

    template <class DataType>
    const DataType&     attribute(const std::string& name) const;

    template <class DataType>
    DataType&           attribute(const std::string& name);

    template <class DataType>
    void                setAttribute(const std::string& name, const DataType& value);

    bool                hasAttribute(const std::string& name) const;


    EntityId            id() const;

private:
    EntityId            mId;
    EntityManager&      mManager;
};

}

}

#include <Noodle/entities/entity.inl>

#endif // ENTITY_HPP
