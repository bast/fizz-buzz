option(ENABLE_UNIT_TESTS "Enable unit tests" ON)
message(STATUS "Enable testing: ${ENABLE_UNIT_TESTS}")

if(ENABLE_UNIT_TESTS)
    include(ExternalProject)

    ExternalProject_Add(
        gtest
        PREFIX "${PROJECT_BINARY_DIR}/gtest"
        GIT_REPOSITORY https://github.com/google/googletest.git
        GIT_TAG master
        INSTALL_COMMAND true  # currently no install command
        )

    include_directories(${PROJECT_BINARY_DIR}/gtest/src/gtest/googletest/include)
    include_directories(${PROJECT_SOURCE_DIR}/src)

    link_directories(${PROJECT_BINARY_DIR}/gtest/src/gtest-build/googlemock/gtest/)

    add_executable(
        unit_tests
        test/main.cpp
        test/fizz_buzz.cpp
        )

    target_link_libraries(
        unit_tests
        libgtest.a
        fizz_buzz
        pthread
        )

    add_dependencies(unit_tests gtest)

    include(CTest)
    enable_testing()

    add_test(unit ${PROJECT_BINARY_DIR}/bin/unit_tests)
endif()
