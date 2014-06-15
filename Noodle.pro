#-------------------------------------------------
#
# Project created by QtCreator 2014-06-15T13:49:15
#
#-------------------------------------------------

QT       -= core gui

TARGET = Noodle
TEMPLATE = lib

DEFINES += NOODLE_LIBRARY

SOURCES +=

HEADERS += noodle.h\
        noodle_global.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}
