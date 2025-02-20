# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_scout2_navigation_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED scout2_navigation_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(scout2_navigation_FOUND FALSE)
  elseif(NOT scout2_navigation_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(scout2_navigation_FOUND FALSE)
  endif()
  return()
endif()
set(_scout2_navigation_CONFIG_INCLUDED TRUE)

# output package information
if(NOT scout2_navigation_FIND_QUIETLY)
  message(STATUS "Found scout2_navigation: 0.1.0 (${scout2_navigation_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'scout2_navigation' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${scout2_navigation_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(scout2_navigation_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${scout2_navigation_DIR}/${_extra}")
endforeach()
