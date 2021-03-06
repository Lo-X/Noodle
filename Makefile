#############################################################################
# Makefile for building: libNoodle.so.1.0.0
# Generated by qmake (3.0) (Qt 5.2.1)
# Project:  Noodle.pro
# Template: lib
# Command: /opt/Qt/5.2.1/gcc_64/bin/qmake -spec linux-g++ CONFIG+=debug CONFIG+=declarative_debug CONFIG+=qml_debug -o Makefile Noodle.pro
#############################################################################

MAKEFILE      = Makefile

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DNOODLE_LIBRARY -DQT_QML_DEBUG -DQT_DECLARATIVE_DEBUG
CFLAGS        = -pipe -g -Wall -W -D_REENTRANT -fPIC $(DEFINES)
CXXFLAGS      = -pipe -std=c++11 -g -Wall -W -D_REENTRANT -fPIC $(DEFINES)
INCPATH       = -I/opt/Qt/5.2.1/gcc_64/mkspecs/linux-g++ -I. -I../../libs
LINK          = g++
LFLAGS        = -Wl,-rpath,/opt/Qt/5.2.1/gcc_64 -shared -Wl,-soname,libNoodle.so.1
LIBS          = $(SUBLIBS) -lsfml-system -lsfml-window -lsfml-graphics -lsfml-audio -lsfml-network -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /opt/Qt/5.2.1/gcc_64/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = cp -f
COPY_DIR      = cp -f -R
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = .obj/

####### Files

SOURCES       = application/application.cpp \
		application/mouse.cpp \
		application/keyboard.cpp \
		entities/system.cpp \
		entities/entitymanager.cpp \
		entities/component.cpp \
		application/states/statestack.cpp \
		application/states/state.cpp \
		resources/soundplayer.cpp 
OBJECTS       = .obj/application.o \
		.obj/mouse.o \
		.obj/keyboard.o \
		.obj/system.o \
		.obj/entitymanager.o \
		.obj/component.o \
		.obj/statestack.o \
		.obj/state.o \
		.obj/soundplayer.o
DIST          = /opt/Qt/5.2.1/gcc_64/mkspecs/features/spec_pre.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/common/shell-unix.conf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/common/unix.conf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/common/linux.conf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/common/gcc-base.conf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/common/gcc-base-unix.conf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/common/g++-base.conf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/common/g++-unix.conf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/qconfig.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_bluetooth.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_bluetooth_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_clucene_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_concurrent.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_concurrent_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_core.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_core_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_dbus.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_dbus_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_declarative.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_declarative_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_designer.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_designer_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_designercomponents_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_gui.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_gui_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_help.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_help_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_multimedia.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_multimedia_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_multimediawidgets.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_multimediawidgets_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_network.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_network_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_nfc.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_nfc_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_opengl.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_opengl_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_openglextensions.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_platformsupport_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_positioning.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_positioning_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_printsupport.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_printsupport_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_qml.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_qml_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_qmltest.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_qmltest_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_quick.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_quick_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_quickparticles_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_script.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_script_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_scripttools.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_scripttools_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_sensors.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_sensors_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_serialport.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_serialport_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_sql.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_sql_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_svg.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_svg_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_testlib.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_testlib_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_uitools.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_uitools_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_webkit.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_webkit_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_webkitwidgets.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_webkitwidgets_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_widgets.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_widgets_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_x11extras.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_x11extras_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_xml.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_xml_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_xmlpatterns.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_xmlpatterns_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/qt_functions.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/qt_config.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/linux-g++/qmake.conf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/spec_post.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/exclusive_builds.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/default_pre.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/resolve_config.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/default_post.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/qml_debug.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/declarative_debug.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/unix/gdb_dwarf_index.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/warn_on.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/qt.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/unix/thread.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/testcase_targets.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/exceptions.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/yacc.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/lex.prf \
		Noodle.pro \
		Noodle.pro
QMAKE_TARGET  = Noodle
DESTDIR       = #avoid trailing-slash linebreak
TARGET        = libNoodle.so.1.0.0
TARGETA       = libNoodle.a
TARGETD       = libNoodle.so.1.0.0
TARGET0       = libNoodle.so
TARGET1       = libNoodle.so.1
TARGET2       = libNoodle.so.1.0


first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile  $(TARGET)

$(TARGET):  $(OBJECTS) $(SUBLIBS) $(OBJCOMP)  
	-$(DEL_FILE) $(TARGET) $(TARGET0) $(TARGET1) $(TARGET2)
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(LIBS) $(OBJCOMP)
	-ln -s $(TARGET) $(TARGET0)
	-ln -s $(TARGET) $(TARGET1)
	-ln -s $(TARGET) $(TARGET2)
	{ test -z "$(DESTDIR)" || cd "$(DESTDIR)"; } && test $$(gdb --version | sed -e 's,[^0-9][^0-9]*\([0-9]\)\.\([0-9]\).*,\1\2,;q') -gt 72 && gdb --nx --batch --quiet -ex 'set confirm off' -ex "save gdb-index ." -ex quit '$(TARGET)' && test -f $(TARGET).gdb-index && objcopy --add-section '.gdb_index=$(TARGET).gdb-index' --set-section-flags '.gdb_index=readonly' '$(TARGET)' '$(TARGET)' && rm -f $(TARGET).gdb-index || true



staticlib: $(TARGETA)

$(TARGETA):  $(OBJECTS) $(OBJCOMP) 
	-$(DEL_FILE) $(TARGETA) 
	$(AR) $(TARGETA) $(OBJECTS)

Makefile: Noodle.pro /opt/Qt/5.2.1/gcc_64/mkspecs/linux-g++/qmake.conf /opt/Qt/5.2.1/gcc_64/mkspecs/features/spec_pre.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/common/shell-unix.conf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/common/unix.conf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/common/linux.conf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/common/gcc-base.conf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/common/gcc-base-unix.conf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/common/g++-base.conf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/common/g++-unix.conf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/qconfig.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_bluetooth.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_bluetooth_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_bootstrap_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_clucene_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_concurrent.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_concurrent_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_core.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_core_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_dbus.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_dbus_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_declarative.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_declarative_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_designer.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_designer_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_designercomponents_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_gui.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_gui_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_help.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_help_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_multimedia.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_multimedia_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_multimediawidgets.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_multimediawidgets_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_network.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_network_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_nfc.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_nfc_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_opengl.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_opengl_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_openglextensions.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_openglextensions_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_platformsupport_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_positioning.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_positioning_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_printsupport.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_printsupport_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_qml.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_qml_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_qmldevtools_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_qmltest.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_qmltest_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_quick.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_quick_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_quickparticles_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_script.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_script_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_scripttools.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_scripttools_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_sensors.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_sensors_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_serialport.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_serialport_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_sql.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_sql_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_svg.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_svg_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_testlib.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_testlib_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_uitools.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_uitools_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_webkit.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_webkit_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_webkitwidgets.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_webkitwidgets_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_widgets.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_widgets_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_x11extras.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_x11extras_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_xml.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_xml_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_xmlpatterns.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_xmlpatterns_private.pri \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/qt_functions.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/qt_config.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/linux-g++/qmake.conf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/spec_post.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/exclusive_builds.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/default_pre.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/resolve_config.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/default_post.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/qml_debug.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/declarative_debug.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/unix/gdb_dwarf_index.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/warn_on.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/qt.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/unix/thread.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/testcase_targets.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/exceptions.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/yacc.prf \
		/opt/Qt/5.2.1/gcc_64/mkspecs/features/lex.prf \
		Noodle.pro
	$(QMAKE) -spec linux-g++ CONFIG+=debug CONFIG+=declarative_debug CONFIG+=qml_debug -o Makefile Noodle.pro
/opt/Qt/5.2.1/gcc_64/mkspecs/features/spec_pre.prf:
/opt/Qt/5.2.1/gcc_64/mkspecs/common/shell-unix.conf:
/opt/Qt/5.2.1/gcc_64/mkspecs/common/unix.conf:
/opt/Qt/5.2.1/gcc_64/mkspecs/common/linux.conf:
/opt/Qt/5.2.1/gcc_64/mkspecs/common/gcc-base.conf:
/opt/Qt/5.2.1/gcc_64/mkspecs/common/gcc-base-unix.conf:
/opt/Qt/5.2.1/gcc_64/mkspecs/common/g++-base.conf:
/opt/Qt/5.2.1/gcc_64/mkspecs/common/g++-unix.conf:
/opt/Qt/5.2.1/gcc_64/mkspecs/qconfig.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_bluetooth.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_bluetooth_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_bootstrap_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_clucene_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_concurrent.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_concurrent_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_core.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_core_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_dbus.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_dbus_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_declarative.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_declarative_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_designer.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_designer_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_designercomponents_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_gui.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_gui_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_help.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_help_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_multimedia.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_multimedia_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_multimediawidgets.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_multimediawidgets_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_network.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_network_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_nfc.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_nfc_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_opengl.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_opengl_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_openglextensions.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_openglextensions_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_platformsupport_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_positioning.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_positioning_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_printsupport.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_printsupport_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_qml.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_qml_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_qmldevtools_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_qmltest.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_qmltest_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_qtmultimediaquicktools_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_quick.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_quick_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_quickparticles_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_script.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_script_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_scripttools.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_scripttools_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_sensors.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_sensors_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_serialport.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_serialport_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_sql.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_sql_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_svg.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_svg_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_testlib.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_testlib_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_uitools.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_uitools_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_webkit.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_webkit_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_webkitwidgets.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_webkitwidgets_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_widgets.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_widgets_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_x11extras.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_x11extras_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_xml.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_xml_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_xmlpatterns.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/modules/qt_lib_xmlpatterns_private.pri:
/opt/Qt/5.2.1/gcc_64/mkspecs/features/qt_functions.prf:
/opt/Qt/5.2.1/gcc_64/mkspecs/features/qt_config.prf:
/opt/Qt/5.2.1/gcc_64/mkspecs/linux-g++/qmake.conf:
/opt/Qt/5.2.1/gcc_64/mkspecs/features/spec_post.prf:
/opt/Qt/5.2.1/gcc_64/mkspecs/features/exclusive_builds.prf:
/opt/Qt/5.2.1/gcc_64/mkspecs/features/default_pre.prf:
/opt/Qt/5.2.1/gcc_64/mkspecs/features/resolve_config.prf:
/opt/Qt/5.2.1/gcc_64/mkspecs/features/default_post.prf:
/opt/Qt/5.2.1/gcc_64/mkspecs/features/qml_debug.prf:
/opt/Qt/5.2.1/gcc_64/mkspecs/features/declarative_debug.prf:
/opt/Qt/5.2.1/gcc_64/mkspecs/features/unix/gdb_dwarf_index.prf:
/opt/Qt/5.2.1/gcc_64/mkspecs/features/warn_on.prf:
/opt/Qt/5.2.1/gcc_64/mkspecs/features/qt.prf:
/opt/Qt/5.2.1/gcc_64/mkspecs/features/unix/thread.prf:
/opt/Qt/5.2.1/gcc_64/mkspecs/features/testcase_targets.prf:
/opt/Qt/5.2.1/gcc_64/mkspecs/features/exceptions.prf:
/opt/Qt/5.2.1/gcc_64/mkspecs/features/yacc.prf:
/opt/Qt/5.2.1/gcc_64/mkspecs/features/lex.prf:
Noodle.pro:
qmake: FORCE
	@$(QMAKE) -spec linux-g++ CONFIG+=debug CONFIG+=declarative_debug CONFIG+=qml_debug -o Makefile Noodle.pro

qmake_all: FORCE

dist: 
	@test -d .obj/Noodle1.0.0 || mkdir -p .obj/Noodle1.0.0
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .obj/Noodle1.0.0/ && (cd `dirname .obj/Noodle1.0.0` && $(TAR) Noodle1.0.0.tar Noodle1.0.0 && $(COMPRESS) Noodle1.0.0.tar) && $(MOVE) `dirname .obj/Noodle1.0.0`/Noodle1.0.0.tar.gz . && $(DEL_FILE) -r .obj/Noodle1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) $(TARGET0) $(TARGET1) $(TARGET2) $(TARGETA)
	-$(DEL_FILE) Makefile


check: first

compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: 

####### Compile

.obj/application.o: application/application.cpp ../../libs/Noodle/application/application.hpp \
		../../libs/Noodle/noodle_global.h \
		../../libs/Noodle/selene.h \
		../../libs/Noodle/selene/State.h \
		selene/Registry.h \
		selene/Class.h \
		selene/ClassFun.h \
		selene/BaseFun.h \
		selene/exotics.h \
		selene/function.h \
		selene/LuaRef.h \
		selene/primitives.h \
		selene/traits.h \
		selene/Ctor.h \
		selene/Dtor.h \
		selene/Fun.h \
		selene/Obj.h \
		selene/ObjFun.h \
		selene/State.h \
		selene/Selector.h \
		selene/util.h \
		../../libs/Noodle/selene/Tuple.h \
		../../libs/Noodle/application/mouse.hpp \
		../../libs/Noodle/application/keyboard.hpp \
		../../libs/Noodle/application/states/statestack.hpp \
		../../libs/Noodle/application/states/state.hpp \
		../../libs/Noodle/resources/resourceholder.hpp \
		../../libs/Noodle/resources/musicplayer.hpp \
		../../libs/Noodle/resources/soundplayer.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/application.o application/application.cpp

.obj/mouse.o: application/mouse.cpp ../../libs/Noodle/application/mouse.hpp \
		../../libs/Noodle/noodle_global.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/mouse.o application/mouse.cpp

.obj/keyboard.o: application/keyboard.cpp ../../libs/Noodle/application/keyboard.hpp \
		../../libs/Noodle/noodle_global.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/keyboard.o application/keyboard.cpp

.obj/system.o: entities/system.cpp ../../libs/Noodle/entities/system.hpp \
		../../libs/Noodle/noodle_global.h \
		../../libs/Noodle/entities/entitymanager.hpp \
		../../libs/Noodle/entities/entity.hpp \
		../../libs/Noodle/entities/component.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/system.o entities/system.cpp

.obj/entitymanager.o: entities/entitymanager.cpp ../../libs/Noodle/entities/entitymanager.hpp \
		../../libs/Noodle/noodle_global.h \
		../../libs/Noodle/entities/entity.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/entitymanager.o entities/entitymanager.cpp

.obj/component.o: entities/component.cpp ../../libs/Noodle/entities/component.hpp \
		../../libs/Noodle/noodle_global.h \
		../../libs/Noodle/entities/entitymanager.hpp \
		../../libs/Noodle/entities/entity.hpp \
		../../libs/Noodle/entities/system.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/component.o entities/component.cpp

.obj/statestack.o: application/states/statestack.cpp ../../libs/Noodle/application/states/statestack.hpp \
		../../libs/Noodle/noodle_global.h \
		../../libs/Noodle/application/states/state.hpp \
		../../libs/Noodle/resources/resourceholder.hpp \
		../../libs/Noodle/resources/musicplayer.hpp \
		../../libs/Noodle/resources/soundplayer.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/statestack.o application/states/statestack.cpp

.obj/state.o: application/states/state.cpp ../../libs/Noodle/application/states/state.hpp \
		../../libs/Noodle/noodle_global.h \
		../../libs/Noodle/resources/resourceholder.hpp \
		../../libs/Noodle/resources/musicplayer.hpp \
		../../libs/Noodle/resources/soundplayer.hpp \
		../../libs/Noodle/application/states/statestack.hpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/state.o application/states/state.cpp

.obj/soundplayer.o: resources/soundplayer.cpp ../../libs/Noodle/resources/soundplayer.hpp \
		../../libs/Noodle/resources/resourceholder.hpp \
		../../libs/Noodle/noodle_global.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o .obj/soundplayer.o resources/soundplayer.cpp

####### Install

install_target: first FORCE
	@test -d $(INSTALL_ROOT)/usr/local/lib || mkdir -p $(INSTALL_ROOT)/usr/local/lib
	-$(INSTALL_PROGRAM) "$(TARGET)" "$(INSTALL_ROOT)/usr/local/lib/$(TARGET)"
	-$(SYMLINK) "$(TARGET)" "$(INSTALL_ROOT)/usr/local/lib/$(TARGET0)"
	-$(SYMLINK) "$(TARGET)" "$(INSTALL_ROOT)/usr/local/lib/$(TARGET1)"
	-$(SYMLINK) "$(TARGET)" "$(INSTALL_ROOT)/usr/local/lib/$(TARGET2)"

uninstall_target: FORCE
	-$(DEL_FILE) "$(INSTALL_ROOT)/usr/local/lib/$(TARGET)" 
	 -$(DEL_FILE) "$(INSTALL_ROOT)/usr/local/lib/$(TARGET0)" 
	 -$(DEL_FILE) "$(INSTALL_ROOT)/usr/local/lib/$(TARGET1)" 
	 -$(DEL_FILE) "$(INSTALL_ROOT)/usr/local/lib/$(TARGET2)"
	-$(DEL_DIR) $(INSTALL_ROOT)/usr/local/lib/ 


install:  install_target  FORCE

uninstall: uninstall_target   FORCE

FORCE:

