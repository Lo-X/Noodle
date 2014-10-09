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
#include <SFML/Graphics/RenderTarget.hpp>
#include <SFML/System/Time.hpp>
#include <SFML/Window/Event.hpp>
#include <map>

namespace ndl
{

namespace es
{

class NOODLESHARED_EXPORT System
{
public:
    System() = default;
    virtual ~System();

    void    entityCreated(WeakEntityPtr entity);
    void    entityRemoved(EntityId id);

    virtual bool    keepEntity(WeakEntityPtr entity) const;
    virtual void    entityKept(WeakEntityPtr entity);
    virtual void    entityDropped(WeakEntityPtr entity);

    const std::map<EntityId, WeakEntityPtr>& entities() const;

    virtual void    draw(sf::RenderTarget& target) const;
    virtual void    update(sf::Time dt);
    virtual void    handleEvent(const sf::Event& e);

protected:
    std::map<EntityId, WeakEntityPtr>   mEntities;
};

}

}

#endif // SYSTEM_HPP
