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


#ifndef STATE_HPP
#define STATE_HPP

#include <Noodle/noodle_global.h>
#include <Noodle/resources/resourceholder.hpp>
#include <Noodle/resources/musicplayer.hpp>
#include <Noodle/resources/soundplayer.hpp>
#include <memory>
#include <string>
#include <SFML/Graphics/RenderWindow.hpp>
#include <SFML/System/Time.hpp>

namespace ndl
{

namespace app
{

class StateStack;

class NOODLESHARED_EXPORT State
{
public:
    typedef std::unique_ptr<State> Ptr;

    struct Context
    {
        Context(sf::RenderWindow& window,
                rsc::TextureHolder& textures,
                rsc::FontHolder& fonts,
                rsc::MusicPlayer& music,
                rsc::SoundPlayer& sounds,
                rsc::ShaderHolder& shaders);

        sf::RenderWindow&   window;
        rsc::TextureHolder& textures;
        rsc::FontHolder&    fonts;
        rsc::MusicPlayer&   music;
        rsc::SoundPlayer&   sounds;
        rsc::ShaderHolder&  shaders;

        // player ?
    };

public:
    State(StateStack& stack, Context context);
    virtual ~State();

    virtual void    draw() = 0;
    virtual bool    update(sf::Time dt) = 0;
    virtual bool    handleEvent(const sf::Event& event) = 0;

    // This method is called when the state is pushed back into the state machine,
    // feel free to call it again when needed
    virtual void    restart();

    virtual void    onPause();
    virtual void    onResume();

protected:
    void            requestStackPush(const std::string& id);
    void            requestStackPop();
    void            requestStackClear();

    Context         context() const;

private:
    StateStack&     mStack;
    Context         mContext;
};


}

}

#endif // STATE_HPP
