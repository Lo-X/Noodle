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


#include "application.hpp"

#include <SFML/Window/Event.hpp>

using namespace ndl;

const sf::Time Application::TimePerFrame = sf::seconds(1.f/60.f);

Application::Application(unsigned int width, unsigned int height, const std::string &title) :
    mWindow(sf::VideoMode(width, height), title.c_str(), sf::Style::Close),
    mLuaState{true},
    mMouse(mWindow)
{
    mWindow.setKeyRepeatEnabled(false);
}


void Application::run()
{
    init();

    sf::Clock clock;
    sf::Time timeSinceLastUpdate = sf::Time::Zero;
    while(mWindow.isOpen())
    {
        sf::Time elapsedTime = clock.restart();
        timeSinceLastUpdate += elapsedTime;
        while(timeSinceLastUpdate > TimePerFrame)
        {
            timeSinceLastUpdate -= TimePerFrame;

            processEvents();
            update(TimePerFrame);
        }

        render();
    }

    quit();
}


void Application::setWindowTitle(std::string title)
{
    mWindow.setTitle(title.c_str());
}

void Application::setWindowSize(unsigned int w, unsigned int h)
{
    mWindow.setSize(sf::Vector2u(w, h));
}


///////////////////////////////////////////////////////////////////



void Application::init()
{
    // Expose Application class to Lua
    exposeToLua();

    // Load main.lua which must contain an init, step and draw function at least
    if(!mLuaState.Load("scripts/main.luac"))
    {
        if(!mLuaState.Load("scripts/main.lua"))
        {
            throw std::runtime_error("The file script/main.lua contains error or is hasn't been found !");
        }
    }

    // Check if all mandatory Lua hooks are defined
    if(mLuaState.CheckNil("Init"))
    {
        throw std::runtime_error("Lua function Init() not found in main.lua");
    }
    if(mLuaState.CheckNil("Step"))
    {
        throw std::runtime_error("Lua function Step(dtInSeconds) not found in main.lua");
    }
    if(mLuaState.CheckNil("Render"))
    {
        throw std::runtime_error("Lua function Render() not found in main.lua");
    }


    mLuaState["Init"]();
}


void Application::exposeToLua()
{
    mLuaState["NdlApplication"].SetObj(
        *this,
        "setWindowTitle", &Application::setWindowTitle,
        "setWindowSize", &Application::setWindowSize
    );

    mLuaState["NdlVector2i"].SetClass<sf::Vector2i, unsigned int, unsigned int>(
        "x", &sf::Vector2i::x,
        "y", &sf::Vector2i::y
    );

    mLuaState["NdlMouse"].SetObj(
        mMouse,
        "isButtonPressed", &Mouse::isButtonPressed,
        "x", &Mouse::x,
        "y", &Mouse::y,
        "setPosition", &Mouse::setPosition
    );

    mLuaState["NdlKeyboard"].SetObj(
        mKeyboard,
        "isKeyPressed", &Keyboard::isKeyPressed
    );
}


void Application::processEvents()
{
    sf::Event event;
    while(mWindow.pollEvent(event))
    {
        if(event.type == sf::Event::Closed)
            mWindow.close();
    }
}


void Application::update(sf::Time dt)
{
    mLuaState["Step"](dt.asSeconds());
}



void Application::render()
{
    mWindow.clear(sf::Color::Black);

    mLuaState["Render"]();

    mWindow.display();
}


void Application::quit()
{
    if(!mLuaState.CheckNil("Quit"))
    {
        mLuaState["Quit"]();
    }
}


