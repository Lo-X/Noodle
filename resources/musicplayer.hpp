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


#ifndef MUSICPLAYER_HPP
#define MUSICPLAYER_HPP

#include <Noodle/resources/resourceholder.hpp>
#include <map>
#include <string>
#include <SFML/Audio/Music.hpp>
#include <SFML/System/NonCopyable.hpp>

namespace ndl
{

namespace rsc
{


template<typename Identifier>
class NOODLESHARED_EXPORT MusicHolder : private sf::NonCopyable
{
public:
    MusicHolder();

    void        load(Identifier id, const std::string& filename);

    void        play(Identifier song);
    void        stop();
    void        pause(bool flag = true);
    void        setVolume(float volume);

private:
    sf::Music   mMusic;
    std::map<Identifier,std::string>    mFilenames;
    float       mVolume;
};


template<typename Identifier>
MusicHolder<Identifier>::MusicHolder() :
    mMusic(),
    mFilenames(),
    mVolume(100.f)
{
}

template<typename Identifier>
void MusicHolder<Identifier>::load(Identifier id, const std::string &filename)
{
    auto inserted = mFilenames.insert(std::make_pair(id, filename));
    assert(inserted.second);
}

template<typename Identifier>
void MusicHolder<Identifier>::play(Identifier song)
{
    std::string filename = mFilenames[song];

    if (!mMusic.openFromFile(filename))
        throw std::runtime_error("Music " + filename + " could not be loaded.");

    mMusic.setVolume(mVolume);
    mMusic.setLoop(true);
    mMusic.play();
}

template<typename Identifier>
void MusicHolder<Identifier>::stop()
{
    mMusic.stop();
}

template<typename Identifier>
void MusicHolder<Identifier>::setVolume(float volume)
{
    mVolume = volume;
    mMusic.setVolume(volume);
}

template<typename Identifier>
void MusicHolder<Identifier>::pause(bool flag)
{
    if (flag)
        mMusic.pause();
    else
        mMusic.play();
}


////////////////////////////////////////////////////////////////////////////////


typedef MusicHolder<unsigned int> MusicPlayer;


}

}

#endif // MUSICPLAYER_HPP
