#ifndef NOODLE_GLOBAL_H
#define NOODLE_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(NOODLE_LIBRARY)
#  define NOODLESHARED_EXPORT Q_DECL_EXPORT
#else
#  define NOODLESHARED_EXPORT Q_DECL_IMPORT
#endif

#endif // NOODLE_GLOBAL_H
