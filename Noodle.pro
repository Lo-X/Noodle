#-------------------------------------------------
#
# Project created by QtCreator 2014-06-15T13:49:15
#
#-------------------------------------------------

QT       -= core gui

TARGET = Noodle
TEMPLATE = lib

LIBS += -lsfml-system -lsfml-window -lsfml-graphics -lsfml-audio -lsfml-network
QMAKE_CXXFLAGS += -std=c++11
OBJECTS_DIR = .obj

DEFINES += NOODLE_LIBRARY

SOURCES += \
    application/application.cpp \
    application/mouse.cpp \
    application/keyboard.cpp

HEADERS +=\
        noodle_global.h \
    noodle.hpp \
    application/application.hpp \
    selene.h \
    selene/BaseFun.h \
    selene/Class.h \
    selene/ClassFun.h \
    selene/Ctor.h \
    selene/Dtor.h \
    selene/exotics.h \
    selene/Fun.h \
    selene/function.h \
    selene/LuaName.h \
    selene/LuaRef.h \
    selene/Obj.h \
    selene/ObjFun.h \
    selene/primitives.h \
    selene/Registry.h \
    selene/Selector.h \
    selene/State.h \
    selene/traits.h \
    selene/Tuple.h \
    selene/util.h \
    application/mouse.hpp \
    application/keyboard.hpp

unix {
    target.path = /usr/local/lib
    INSTALLS += target
}
