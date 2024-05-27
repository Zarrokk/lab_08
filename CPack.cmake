include(InstallRequiredSystemLibraries)

set(CPACK_PACKAGE_VERSION ${PRINT_VERSION})
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "C++ app for solving equations")
set(CPACK_RESOURCE_FILE_LICENSE ${CMAKE_CURRENT_SOURCE_DIR}/LICENSE)
set(CPACK_RESOURCE_FILE_README ${CMAKE_CURRENT_SOURCE_DIR}/README.md)

set(CPACK_SOURCE_IGNORE_FILES 
"\\\\.cmake;/.build/;/.git/;/.github/"
)

set(CPACK_SOURCE_INSTALLED_DIRECTORIES "${CMAKE_SOURCE_DIR}; /")

set(CPACK_SOURCE_GENERATOR "TGZ;ZIP")

set(CPACK_DEBIAN_PACKAGE_NAME "solver-dev")
set(CPACK_DEBIAN_FILE_NAME "solver-${PRINT_VERSION}.deb")
set(CPACK_DEBIAN_PACKAGE_VERSION ${PRINT_VERSION})
set(CPACK_DEBIAN_PACKAGE_ARCHITECTURE "all")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "Bu5y5leeper")
set(CPACK_DEBIAN_PACKAGE_DESCRIPTION "Solve equation")
set(CPACK_DEBIAN_PACKAGE_RELEASE 1)

set(CPACK_GENERATOR "DEB")

include(CPack)