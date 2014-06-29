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


#ifndef SOUNDPLAYER_HPP
#define SOUNDPLAYER_HPP

#include <resources/resourceholder.hpp>
#include <map>
#include <list>
#include <string>
#include <SFML/Audio/Sound.hpp>
#include <SFML/Audio/Listener.hpp>
#include <SFML/System/NonCopyable.hpp>

namespace ndl
{

namespace rsc
{


class NOODLESHARED_EXPORT SoundPlayer : private sf::NonCopyable
{
public:
    SoundPlayer();

    void            load(unsigned int id, const std::string& filename);

    void            play(unsigned int sound);
    void            play(unsigned int sound, sf::Vector2f position);

    void            removeStoppedSounds();
    void            setListenerPosition(sf::Vector2f position);
    sf::Vector2f    getListenerPosition() const;

private:
    SoundHolder             mSoundBuffers;
    std::list<sf::Sound>    mSounds;
};


}

}


#endif // SOUNDPLAYER_HPP
