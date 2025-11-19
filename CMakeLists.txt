cmake_minimum_required(VERSION 3.16)

project(QtPractice VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.8)

# -------------------------
# Executable Sources
# -------------------------
qt_add_executable(appQtPractice
    src/main.cpp
)

# -------------------------
# QML Module
# -------------------------
qt_add_qml_module(appQtPractice
    URI QtPractice
    VERSION 1.0
    QML_FILES
        qml/Main.qml
        screens/HomeScreen.qml
)

# -------------------------
# Resources (.qrc)
# -------------------------
qt_add_resources(appQtPractice "app_resources"
    PREFIX "/"
    FILES
        resources/qml.qrc
)

# -------------------------
# Include headers
# -------------------------
target_include_directories(appQtPractice
    PRIVATE inc
)

# -------------------------
# Link Qt libraries
# -------------------------
target_link_libraries(appQtPractice
    PRIVATE Qt6::Quick
)

# -------------------------
# Install
# -------------------------
include(GNUInstallDirs)
install(TARGETS appQtPractice
    BUNDLE DESTINATION .
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
