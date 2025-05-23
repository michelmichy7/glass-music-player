cmake_minimum_required(VERSION 3.16)

project(glass-music-player VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

qt_add_executable(appglass-music-player
    main.cpp
)

qt_add_qml_module(appglass-music-player
    URI glass-music-player
    VERSION 1.0


        QML_FILES
            Main.qml
            Customizations/PlayButton.qml
            Customizations/PreviousButton.qml
            QML_FILES Customizations/NextButton.qml
            QML_FILES Customizations/ImportMusicButton.qml
            SOURCES Backend/musiclibary.h Backend/musiclibary.cpp
            QML_FILES Customizations/BlackPaintedMusicImport.qml


        )
    qt_add_resources(appglass-music-player "resources"
        PREFIX /
        FILES
            Customizations/Icons/Pause.svg
            Customizations/Icons/Previous.svg
            Customizations/Icons/Next.svg
            Customizations/Icons/Import_Music_Short.png
            Customizations/Icons/White_p_musicImport.png
            Customizations/Icons/Black_p_musicImport.png
    )

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appglass-music-player PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appglass-music-player
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appglass-music-player
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appglass-music-player
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
