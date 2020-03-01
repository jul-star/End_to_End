QT += testlib
QT += gui
CONFIG += qt warn_on depend_includepath testcase
CONFIG += c++1z

TEMPLATE = app
INCLUDEPATH += source

SOURCES +=  \
        source/models/tst_clienttest.cpp
