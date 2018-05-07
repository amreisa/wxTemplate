TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

INCLUDEPATH += "D:/Dev/Libs/wxWidgets-3.1.0/include"

win32-g++ {
CONFIG(debug, debug|release) {
INCLUDEPATH += "D:/Dev/Libs/wxWidgets-3.1.0/lib/gcc_lib/mswud"
    wxCXXFLAGS = $$system(wx-config --prefix=D:/Dev/Libs/wxWidgets-3.1.0 --wxcfg=gcc_lib\mswud --cxxflags --unicode=yes --debug=yes --static=yes)
    wxLinkOptions = $$system(wx-config --prefix=D:/Dev/Libs/wxWidgets-3.1.0 --wxcfg=gcc_lib\mswud --debug=yes --libs --unicode=yes --static=yes)
    wxLinkOptions += -static-libstdc++ -static-libgcc -static
}

CONFIG(release, debug|release) {
INCLUDEPATH += "D:/Dev/Libs/wxWidgets-3.1.0/lib/gcc_lib/mswu"
    wxCXXFLAGS = $$system(wx-config --prefix=D:/Dev/Libs/wxWidgets-3.1.0 --wxcfg=gcc_lib\mswu --cxxflags --unicode=yes --debug=no --static=yes)
    wxLinkOptions = $$system(wx-config --prefix=D:/Dev/Libs/wxWidgets-3.1.0 --wxcfg=gcc_lib\mswu --debug=no --libs --unicode=yes --static=yes)
    wxLinkOptions += -static-libstdc++ -static-libgcc -static
}
}

LIBS += $$wxLinkOptions
QMAKE_CXXFLAGS_RELEASE += $$wxCXXFLAGS
QMAKE_CXXFLAGS_DEBUG += $$wxCXXFLAGS

SOURCES += \
        main.cpp

HEADERS += \
    main.h
