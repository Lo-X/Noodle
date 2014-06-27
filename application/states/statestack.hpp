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


#ifndef STATESTACK_HPP
#define STATESTACK_HPP

#include "../../noodle_global.h"
#include "state.hpp"
#include <SFML/System/NonCopyable.hpp>
#include <vector>
#include <utility>
#include <functional>
#include <map>
#include <string>

namespace ndl
{

namespace app
{


class NOODLESHARED_EXPORT StateStack
{
public:
    typedef std::map<const std::string,std::function<State::Ptr()>> FactoryMap;

    enum Action
    {
        Push,
        Pop,
        Clear
    };

public:
    explicit StateStack(State::Context context);

    template <typename T>
    void                registerState(const std::string& id);
    void                update(sf::Time dt);
    void                draw();
    void                handleEvent(const sf::Event& event);

    void                pushState(const std::string& id);
    void                popState();
    void                clearStates();

    bool                isEmpty() const;

private:
    State::Ptr          createState(const std::string& id);
    void                applyPendingChanges();

private:
    struct PendingChange
    {
        explicit PendingChange(Action action, const std::string& id = "none");
        Action              action;
        const std::string&  stateID;
    };

private:
    std::vector<State::Ptr>         mStack;
    std::vector<PendingChange>      mPendingList;
    State::Context                  mContext;
    FactoryMap                      mFactories;

};


template <typename T>
void StateStack::registerState(const std::string& id)
{
    mFactories[id] = [this] ()
    {
        return State::Ptr(new T(*this, mContext));
    };
}



}

}

#endif // STATESTACK_HPP
