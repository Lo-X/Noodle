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


#ifndef SYSTEM_HPP
#define SYSTEM_HPP

#include <Noodle/noodle_global.h>
#include <Noodle/entities/entitymanager.hpp>
#include <map>

namespace ndl
{

namespace es
{

class NOODLESHARED_EXPORT System
{
public:
    virtual ~System();

    void    entityCreated(WeakEntityPtr entity);
    void    entityRemoved(EntityId id);

    virtual bool    keepEntity(WeakEntityPtr entity) const = 0;
    virtual void    entityKept(WeakEntityPtr entity);
    virtual void    entityDropped(WeakEntityPtr entity);

    const std::map<EntityId, WeakEntityPtr>& entities() const;

protected:
    std::map<EntityId, WeakEntityPtr>   mEntities;
};

}

}

#endif // SYSTEM_HPP
