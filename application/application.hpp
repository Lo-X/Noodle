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


#ifndef APPLICATION_HPP
#define APPLICATION_HPP

#include "../noodle_global.h"
#include "../selene.h"
#include "mouse.hpp"
#include "keyboard.hpp"
#include <SFML/Graphics/RenderWindow.hpp>
#include <SFML/System/Time.hpp>
#include <string>


namespace ndl
{

namespace app
{


class NOODLESHARED_EXPORT Application
{
public:
    Application(unsigned int width, unsigned int height, const std::string& title);

    void        run();
    void        stop();

    void        setWindowTitle(std::string title);
    void        setWindowSize(unsigned int w, unsigned int h);


private:
    void        init();
    void        exposeToLua();
    void        processEvents();
    void        update(sf::Time dt);
    void        render();
    void        quit();

private:
    static const sf::Time   TimePerFrame;
    sf::RenderWindow        mWindow;
    sel::State              mLuaState;

    // Lua objects
    Mouse                   mMouse;
    Keyboard                mKeyboard;

    // Textures, Fonts, Sounds, ...

    // StateStack
};


}

}

#endif // APPLICATION_HPP
