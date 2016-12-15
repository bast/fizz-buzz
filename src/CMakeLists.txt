include_directories(${PROJECT_BINARY_DIR}/generated)

add_library(
    fizz_buzz
    SHARED
    fizz_buzz.f90
    fizz_buzz.h
    divisible.f90
    )

add_executable(
    fb.x
    main.cpp
    )

target_link_libraries(
    fb.x
    fizz_buzz
    )

install(
    TARGETS fb.x
    RUNTIME DESTINATION bin
    )

install(
    TARGETS fizz_buzz
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
    )
