
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
#include <string>

using namespace ndl::es;

template <class DataType>
void EntityManager::EntityStorage::setData(const std::string& name, const DataType& value)
{
    assert(mAttributeData.find(name) != mAttributeData.end());
    auto valuePtr = mAttributeData.at(name);

    if(!valuePtr)
        valuePtr = std::make_shared<DataType>(value);
    else
        *std::static_pointer_cast<DataType>(valuePtr) = value;
}

template <class DataType>
const DataType& EntityManager::EntityStorage::data(const std::string& name) const
{
    assert(mAttributeData.find(name) != mAttributeData.end());
    auto valuePtr = mAttributeData.at(name);

    assert(valuePtr);
    return *std::static_pointer_cast<DataType>(valuePtr);
}

template <class DataType>
DataType& EntityManager::EntityStorage::data(const std::string& name)
{
    assert(mAttributeData.find(name) != mAttributeData.end());
    auto valuePtr = mAttributeData.at(name);

    assert(valuePtr);
    return *std::static_pointer_cast<DataType>(valuePtr);
}


/*********************************************************************************************/


template <class DataType>
void EntityManager::setAttribute(const EntityId id, const std::string& name, const DataType& value)
{
    assert(mEntities.find(id) != mEntities.end());

    mAttributes.find(id)->second.setData<DataType>(name, value);
}

template <class DataType>
const DataType& EntityManager::attribute(const EntityId id, const std::string& name) const
{
    assert(mEntities.find(id) != mEntities.end());

    return mAttributes.find(id)->second.data<DataType>(name);
}

template <class DataType>
DataType& EntityManager::attribute(const EntityId id, const std::string& name)
{
    assert(mEntities.find(id) != mEntities.end());

    return mAttributes.find(id)->second.data<DataType>(name);
}
