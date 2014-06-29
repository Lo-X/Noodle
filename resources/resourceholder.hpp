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


#ifndef RESOURCEHOLDER_HPP
#define RESOURCEHOLDER_HPP

#include <noodle_global.h>
#include <map>
#include <string>
#include <memory>
#include <stdexcept>
#include <cassert>


namespace ndl
{

namespace rsc
{


template <typename Resource, typename Identifier>
class NOODLESHARED_EXPORT ResourceHolder
{
public:
    void            load(Identifier id, const std::string& filename);

    template<typename Parameter>
    void            load(Identifier id, const std::string &filename, const Parameter& secondParam);

    Resource&       get(Identifier id);
    const Resource& get(Identifier id) const;

private:
    void            insertResource(Identifier id, std::unique_ptr<Resource> resource);

private:
    std::map<Identifier, std::unique_ptr<Resource>> mResourceMap;
};


template <typename Resource, typename Identifier>
void ResourceHolder<Resource, Identifier>::load(Identifier id, const std::string &filename)
{
    std::unique_ptr<Resource> resource(new Resource());
    if(!resource->loadFromFile(filename))
        throw std::runtime_error("ResourceHolder::load - Failed to load " + filename);

    insertResource(id, std::move(resource));
}

template <typename Resource, typename Identifier>
template <typename Parameter>
void ResourceHolder<Resource, Identifier>::load(Identifier id, const std::string &filename, const Parameter& secondParam)
{
    std::unique_ptr<Resource> resource(new Resource());
    if(!resource->loadFromFile(filename, secondParam))
        throw std::runtime_error("ResourceHolder::load - Failed to load " + filename);

    insertResource(id, std::move(resource));
}

template <typename Resource, typename Identifier>
Resource& ResourceHolder<Resource, Identifier>::get(Identifier id)
{
    auto found = mResourceMap.find(id);
    assert(found!= mResourceMap.end());

    return *found->second;
}

template <typename Resource, typename Identifier>
const Resource& ResourceHolder<Resource, Identifier>::get(Identifier id) const
{
    auto found = mResourceMap.find(id);
    assert(found!= mResourceMap.end());

    return *found->second;
}

template <typename Resource, typename Identifier>
void ResourceHolder<Resource, Identifier>::insertResource(Identifier id, std::unique_ptr<Resource> resource)
{
    auto inserted = mResourceMap.insert(std::make_pair(id, std::move(resource)));
    assert(inserted.second);
}


} // namespace rsc

} // namespace ndl

////////////////////////////////////////////////////////////////////////

// Forward declarations
namespace sf
{
    class Texture;
    class Font;
    class Shader;
    class Music;
    class SoundBuffer;
}


namespace ndl
{

namespace rsc
{

typedef ResourceHolder<sf::Texture, unsigned int> TextureHolder;
typedef ResourceHolder<sf::Font, unsigned int> FontHolder;
typedef ResourceHolder<sf::Shader, unsigned int> ShaderHolder;
typedef ResourceHolder<sf::SoundBuffer, unsigned int> SoundHolder;

}

}




#endif // RESOURCEHOLDER_HPP
