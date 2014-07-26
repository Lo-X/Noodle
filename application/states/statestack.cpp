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


#include <Noodle/application/states/statestack.hpp>
#include <cassert>

using namespace ndl::app;

StateStack::PendingChange::PendingChange(Action action, const std::string& stateID) :
    action(action),
    stateID(stateID)
{
}

////////////////////////////////////////////////////////////

StateStack::StateStack(State::Context context) :
    mStack(),
    mPendingList(),
    mContext(context),
    mFactories()
{
}


State::Ptr StateStack::createState(const std::string& id)
{
    auto found = mFactories.find(id);
    assert(found != mFactories.end());

    return found->second();
}

void StateStack::update(sf::Time dt)
{
    // Iterate from top to bottom, stop as soon as update() returns false
    for (auto it = mStack.rbegin(); it != mStack.rend(); ++it)
    {
        if (!(*it)->update(dt))
            break;
    }

    applyPendingChanges();
}

void StateStack::draw()
{
    // Draw all active states from bottom to top
    for(State::Ptr& state : mStack)
        state->draw();
}

void StateStack::handleEvent(const sf::Event &event)
{
    for (auto it = mStack.rbegin(); it != mStack.rend(); ++it)
    {
        if (!(*it)->handleEvent(event))
            break;
    }

    applyPendingChanges();
}

void StateStack::pushState(const std::string& id)
{
    mPendingList.push_back(PendingChange(Push, id));
}

void StateStack::popState()
{
    mPendingList.push_back(PendingChange(Pop));
}

void StateStack::clearStates()
{
    mPendingList.push_back(PendingChange(Clear));
}

bool StateStack::isEmpty() const
{
    return mStack.empty();
}

void StateStack::applyPendingChanges()
{
    for(PendingChange change : mPendingList)
    {
        switch(change.action)
        {
            case Push:
                if(!mStack.empty())
                {
                    mStack.back()->onPause();
                }
                mStack.push_back(createState(change.stateID));
                break;

            case Pop:
                mStack.pop_back();
                if(!mStack.empty())
                {
                    mStack.back()->onResume();
                }
                break;

            case Clear:
                mStack.clear();
            break;
        }
    }

    mPendingList.clear();
}



