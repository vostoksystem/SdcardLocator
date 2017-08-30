# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
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

