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
#include <cassert>

using namespace ndl::es;

System::System()
{
}


System::~System()
{
}


void System::addComponent(Component::Ptr component)
{
    mNewComponents.push_back(component);
}


void System::removeComponentLater(Component::Ptr component)
{
    auto it = mComponents.find(component);

    assert(it != mComponents.end());

    mOldComponents.push_back(*it);
    mComponents.erase(it);
}

void System::removeComponentNow(Component::Ptr component)
{
    auto it = mComponents.find(component);

    assert(it != mComponents.end());

    mComponents.erase(it);
}


void System::update(sf::Time dt)
{
    while(!mNewComponents.empty())
    {
        Component::Ptr c = mNewComponents.back();
        c->start();
        mComponents.insert(c);
        mNewComponents.pop_back();
    }

    while(!mOldComponents.empty())
    {
        Component::Ptr c = mOldComponents.back();
        c->stop();
        mNewComponents.pop_back();
    }

    update(dt);
}
