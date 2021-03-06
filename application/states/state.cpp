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


#include <Noodle/application/states/state.hpp>
#include <Noodle/application/states/statestack.hpp>

using namespace ndl::app;

State::Context::Context(sf::RenderWindow &window, rsc::TextureHolder &textures, rsc::FontHolder &fonts, rsc::MusicPlayer &music, rsc::SoundPlayer &sounds, rsc::ShaderHolder &shaders) :
    window(window),
    textures(textures),
    fonts(fonts),
    music(music),
    sounds(sounds),
    shaders(shaders)
{
}

////////////////////////////////////////////////////////////

State::State(StateStack& stack, Context context) :
    mStack(stack),
    mContext(context)
{
}

State::~State()
{
}


void State::requestStackPush(const std::string &stateID)
{
    mStack.pushState(stateID);
}

void State::requestStackPop()
{
    mStack.popState();
}

void State::requestStackClear()
{
    mStack.clearStates();
}


State::Context State::context() const
{
    return mContext;
}


void State::restart()
{

}

void State::onPause()
{
}

void State::onResume()
{
}

