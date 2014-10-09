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

#include <Noodle/entities/entity.hpp>
#include <Noodle/entities/entitymanager.hpp>

using namespace ndl::es;

Entity::Entity(unsigned int id, std::size_t group, EntityManager& manager) :
    mId(id),
    mManager(manager),
    mGroup(group)
{

}

Entity::~Entity()
{

}


bool Entity::hasAttribute(const std::string& name) const
{
    return mManager.hasAttribute(mId, name);
}

unsigned int Entity::id() const
{
    return mId;
}

std::size_t Entity::group() const
{
    return mGroup;
}
