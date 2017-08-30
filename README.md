# sdcardlocator
SdcardLoactor is an helper class to detect status and location of a sdcard on sfos phones. Primary made for SailfishOs

* simple, only consist of 1 class to add to your project
* qml ready, just register the service and use one of the 3 properties

Install
==================

1. Copy the src/sdcardlocator file to your src project directory.
2. Now edit the pro file to include the pri

Have a look at the sample project

Sample .pro file
------------------
Assuming you use the default name and location, for the project harbour-test_sdcarlocator :

```pro
TARGET = harbour-test_sdcardLocator

CONFIG += sailfishapp

include(src/sdcardlocator/sdcardlocator.pri)

SOURCES += src/harbour-test_sdcardLocator.cpp

DISTFILES += qml/harbour-test_sdcardLocator.qml \
    qml/cover/*.qml \
    qml/pages/*.qml \
    qml/composents/*.qml \
    rpm/harbour-test_sdcardLocator.changes \
    rpm/harbour-test_sdcardLocator.spec \
    rpm/harbour-test_sdcardLocator.yaml \
    harbour-test_sdcardLocator.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 256x256
```
Usage
==================
You can use SdcardLocator in Qt or qml
 
From Qml
------------------
Register the service passing a reference to the context, and an optionnal service name like this :

```cpp
QScopedPointer<QGuiApplication> app(SailfishApp::application(argc, argv));
QScopedPointer<QQuickView> view(SailfishApp::createView());

// register the locator into qml with the default service name
SdcardLocator::init(view->rootContext());
```

then in qml, using the default name :
```javascript
var sdcardStatus = SdcardLocator.present;
var sdcardLocation = SdcardLocator.location;
var sdcardType = SdcardLocator.type;

```

From Qt
------------------
SdcardLocator is a singleton. Access it with :
```cpp
bool sdcardPresent = SdcardLocator::getInstance().isPresent();
```

For additionnal inforamtion check the sample program (Full Sailfish app)
