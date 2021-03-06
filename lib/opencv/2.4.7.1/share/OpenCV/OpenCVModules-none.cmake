#----------------------------------------------------------------
# Generated CMake target import file for configuration "None".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "opencv_core" for configuration "None"
set_property(TARGET opencv_core APPEND PROPERTY IMPORTED_CONFIGURATIONS NONE)
set_target_properties(opencv_core PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_NONE ""
  IMPORTED_LOCATION_NONE "${_IMPORT_PREFIX}/lib/libopencv_core.2.4.7.dylib"
  IMPORTED_SONAME_NONE "lib/libopencv_core.2.4.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_core )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_core "${_IMPORT_PREFIX}/lib/libopencv_core.2.4.7.dylib" )

# Import target "opencv_flann" for configuration "None"
set_property(TARGET opencv_flann APPEND PROPERTY IMPORTED_CONFIGURATIONS NONE)
set_target_properties(opencv_flann PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_NONE "opencv_core"
  IMPORTED_LOCATION_NONE "${_IMPORT_PREFIX}/lib/libopencv_flann.2.4.7.dylib"
  IMPORTED_SONAME_NONE "lib/libopencv_flann.2.4.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_flann )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_flann "${_IMPORT_PREFIX}/lib/libopencv_flann.2.4.7.dylib" )

# Import target "opencv_imgproc" for configuration "None"
set_property(TARGET opencv_imgproc APPEND PROPERTY IMPORTED_CONFIGURATIONS NONE)
set_target_properties(opencv_imgproc PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_NONE "opencv_core"
  IMPORTED_LOCATION_NONE "${_IMPORT_PREFIX}/lib/libopencv_imgproc.2.4.7.dylib"
  IMPORTED_SONAME_NONE "lib/libopencv_imgproc.2.4.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_imgproc )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_imgproc "${_IMPORT_PREFIX}/lib/libopencv_imgproc.2.4.7.dylib" )

# Import target "opencv_highgui" for configuration "None"
set_property(TARGET opencv_highgui APPEND PROPERTY IMPORTED_CONFIGURATIONS NONE)
set_target_properties(opencv_highgui PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_NONE "opencv_core;opencv_imgproc"
  IMPORTED_LINK_INTERFACE_LIBRARIES_NONE ""
  IMPORTED_LOCATION_NONE "${_IMPORT_PREFIX}/lib/libopencv_highgui.2.4.7.dylib"
  IMPORTED_SONAME_NONE "lib/libopencv_highgui.2.4.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_highgui )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_highgui "${_IMPORT_PREFIX}/lib/libopencv_highgui.2.4.7.dylib" )

# Import target "opencv_features2d" for configuration "None"
set_property(TARGET opencv_features2d APPEND PROPERTY IMPORTED_CONFIGURATIONS NONE)
set_target_properties(opencv_features2d PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_NONE "opencv_core;opencv_flann;opencv_imgproc;opencv_highgui"
  IMPORTED_LOCATION_NONE "${_IMPORT_PREFIX}/lib/libopencv_features2d.2.4.7.dylib"
  IMPORTED_SONAME_NONE "lib/libopencv_features2d.2.4.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_features2d )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_features2d "${_IMPORT_PREFIX}/lib/libopencv_features2d.2.4.7.dylib" )

# Import target "opencv_calib3d" for configuration "None"
set_property(TARGET opencv_calib3d APPEND PROPERTY IMPORTED_CONFIGURATIONS NONE)
set_target_properties(opencv_calib3d PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_NONE "opencv_core;opencv_flann;opencv_imgproc;opencv_highgui;opencv_features2d"
  IMPORTED_LOCATION_NONE "${_IMPORT_PREFIX}/lib/libopencv_calib3d.2.4.7.dylib"
  IMPORTED_SONAME_NONE "lib/libopencv_calib3d.2.4.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_calib3d )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_calib3d "${_IMPORT_PREFIX}/lib/libopencv_calib3d.2.4.7.dylib" )

# Import target "opencv_ml" for configuration "None"
set_property(TARGET opencv_ml APPEND PROPERTY IMPORTED_CONFIGURATIONS NONE)
set_target_properties(opencv_ml PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_NONE "opencv_core"
  IMPORTED_LOCATION_NONE "${_IMPORT_PREFIX}/lib/libopencv_ml.2.4.7.dylib"
  IMPORTED_SONAME_NONE "lib/libopencv_ml.2.4.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_ml )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_ml "${_IMPORT_PREFIX}/lib/libopencv_ml.2.4.7.dylib" )

# Import target "opencv_video" for configuration "None"
set_property(TARGET opencv_video APPEND PROPERTY IMPORTED_CONFIGURATIONS NONE)
set_target_properties(opencv_video PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_NONE "opencv_core;opencv_imgproc"
  IMPORTED_LOCATION_NONE "${_IMPORT_PREFIX}/lib/libopencv_video.2.4.7.dylib"
  IMPORTED_SONAME_NONE "lib/libopencv_video.2.4.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_video )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_video "${_IMPORT_PREFIX}/lib/libopencv_video.2.4.7.dylib" )

# Import target "opencv_legacy" for configuration "None"
set_property(TARGET opencv_legacy APPEND PROPERTY IMPORTED_CONFIGURATIONS NONE)
set_target_properties(opencv_legacy PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_NONE "opencv_core;opencv_flann;opencv_imgproc;opencv_highgui;opencv_features2d;opencv_calib3d;opencv_ml;opencv_video"
  IMPORTED_LOCATION_NONE "${_IMPORT_PREFIX}/lib/libopencv_legacy.2.4.7.dylib"
  IMPORTED_SONAME_NONE "lib/libopencv_legacy.2.4.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_legacy )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_legacy "${_IMPORT_PREFIX}/lib/libopencv_legacy.2.4.7.dylib" )

# Import target "opencv_objdetect" for configuration "None"
set_property(TARGET opencv_objdetect APPEND PROPERTY IMPORTED_CONFIGURATIONS NONE)
set_target_properties(opencv_objdetect PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_NONE "opencv_core;opencv_imgproc;opencv_highgui"
  IMPORTED_LOCATION_NONE "${_IMPORT_PREFIX}/lib/libopencv_objdetect.2.4.7.dylib"
  IMPORTED_SONAME_NONE "lib/libopencv_objdetect.2.4.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_objdetect )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_objdetect "${_IMPORT_PREFIX}/lib/libopencv_objdetect.2.4.7.dylib" )

# Import target "opencv_photo" for configuration "None"
set_property(TARGET opencv_photo APPEND PROPERTY IMPORTED_CONFIGURATIONS NONE)
set_target_properties(opencv_photo PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_NONE "opencv_core;opencv_imgproc"
  IMPORTED_LOCATION_NONE "${_IMPORT_PREFIX}/lib/libopencv_photo.2.4.7.dylib"
  IMPORTED_SONAME_NONE "lib/libopencv_photo.2.4.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_photo )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_photo "${_IMPORT_PREFIX}/lib/libopencv_photo.2.4.7.dylib" )

# Import target "opencv_gpu" for configuration "None"
set_property(TARGET opencv_gpu APPEND PROPERTY IMPORTED_CONFIGURATIONS NONE)
set_target_properties(opencv_gpu PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_NONE "opencv_core;opencv_flann;opencv_imgproc;opencv_highgui;opencv_features2d;opencv_calib3d;opencv_ml;opencv_video;opencv_legacy;opencv_objdetect;opencv_photo"
  IMPORTED_LOCATION_NONE "${_IMPORT_PREFIX}/lib/libopencv_gpu.2.4.7.dylib"
  IMPORTED_SONAME_NONE "lib/libopencv_gpu.2.4.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_gpu )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_gpu "${_IMPORT_PREFIX}/lib/libopencv_gpu.2.4.7.dylib" )

# Import target "opencv_ocl" for configuration "None"
set_property(TARGET opencv_ocl APPEND PROPERTY IMPORTED_CONFIGURATIONS NONE)
set_target_properties(opencv_ocl PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_NONE "opencv_core;opencv_flann;opencv_imgproc;opencv_highgui;opencv_features2d;opencv_calib3d;opencv_ml;opencv_objdetect;opencv_video"
  IMPORTED_LOCATION_NONE "${_IMPORT_PREFIX}/lib/libopencv_ocl.2.4.7.dylib"
  IMPORTED_SONAME_NONE "lib/libopencv_ocl.2.4.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_ocl )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_ocl "${_IMPORT_PREFIX}/lib/libopencv_ocl.2.4.7.dylib" )

# Import target "opencv_nonfree" for configuration "None"
set_property(TARGET opencv_nonfree APPEND PROPERTY IMPORTED_CONFIGURATIONS NONE)
set_target_properties(opencv_nonfree PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_NONE "opencv_core;opencv_flann;opencv_imgproc;opencv_highgui;opencv_features2d;opencv_calib3d;opencv_ml;opencv_video;opencv_legacy;opencv_objdetect;opencv_photo;opencv_gpu;opencv_ocl"
  IMPORTED_LOCATION_NONE "${_IMPORT_PREFIX}/lib/libopencv_nonfree.2.4.7.dylib"
  IMPORTED_SONAME_NONE "lib/libopencv_nonfree.2.4.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_nonfree )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_nonfree "${_IMPORT_PREFIX}/lib/libopencv_nonfree.2.4.7.dylib" )

# Import target "opencv_contrib" for configuration "None"
set_property(TARGET opencv_contrib APPEND PROPERTY IMPORTED_CONFIGURATIONS NONE)
set_target_properties(opencv_contrib PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_NONE "opencv_core;opencv_flann;opencv_imgproc;opencv_highgui;opencv_features2d;opencv_calib3d;opencv_ml;opencv_video;opencv_legacy;opencv_objdetect;opencv_photo;opencv_gpu;opencv_ocl;opencv_nonfree"
  IMPORTED_LOCATION_NONE "${_IMPORT_PREFIX}/lib/libopencv_contrib.2.4.7.dylib"
  IMPORTED_SONAME_NONE "lib/libopencv_contrib.2.4.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_contrib )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_contrib "${_IMPORT_PREFIX}/lib/libopencv_contrib.2.4.7.dylib" )

# Import target "opencv_java" for configuration "None"
set_property(TARGET opencv_java APPEND PROPERTY IMPORTED_CONFIGURATIONS NONE)
set_target_properties(opencv_java PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_NONE "opencv_core;opencv_flann;opencv_imgproc;opencv_highgui;opencv_features2d;opencv_calib3d;opencv_ml;opencv_video;opencv_legacy;opencv_objdetect;opencv_photo;opencv_gpu;opencv_ocl;opencv_nonfree;opencv_contrib"
  IMPORTED_LINK_INTERFACE_LIBRARIES_NONE ""
  IMPORTED_LOCATION_NONE "${_IMPORT_PREFIX}/share/OpenCV/java/libopencv_java247.dylib"
  IMPORTED_SONAME_NONE "lib/libopencv_java247.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_java )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_java "${_IMPORT_PREFIX}/share/OpenCV/java/libopencv_java247.dylib" )

# Import target "opencv_stitching" for configuration "None"
set_property(TARGET opencv_stitching APPEND PROPERTY IMPORTED_CONFIGURATIONS NONE)
set_target_properties(opencv_stitching PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_NONE "opencv_core;opencv_flann;opencv_imgproc;opencv_highgui;opencv_features2d;opencv_calib3d;opencv_ml;opencv_video;opencv_legacy;opencv_objdetect;opencv_photo;opencv_gpu;opencv_ocl;opencv_nonfree"
  IMPORTED_LOCATION_NONE "${_IMPORT_PREFIX}/lib/libopencv_stitching.2.4.7.dylib"
  IMPORTED_SONAME_NONE "lib/libopencv_stitching.2.4.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_stitching )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_stitching "${_IMPORT_PREFIX}/lib/libopencv_stitching.2.4.7.dylib" )

# Import target "opencv_superres" for configuration "None"
set_property(TARGET opencv_superres APPEND PROPERTY IMPORTED_CONFIGURATIONS NONE)
set_target_properties(opencv_superres PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_NONE "opencv_core;opencv_flann;opencv_imgproc;opencv_highgui;opencv_features2d;opencv_calib3d;opencv_ml;opencv_video;opencv_legacy;opencv_objdetect;opencv_photo;opencv_gpu;opencv_ocl"
  IMPORTED_LOCATION_NONE "${_IMPORT_PREFIX}/lib/libopencv_superres.2.4.7.dylib"
  IMPORTED_SONAME_NONE "lib/libopencv_superres.2.4.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_superres )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_superres "${_IMPORT_PREFIX}/lib/libopencv_superres.2.4.7.dylib" )

# Import target "opencv_ts" for configuration "None"
set_property(TARGET opencv_ts APPEND PROPERTY IMPORTED_CONFIGURATIONS NONE)
set_target_properties(opencv_ts PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NONE "CXX"
  IMPORTED_LINK_INTERFACE_LIBRARIES_NONE "opencv_core;opencv_flann;opencv_imgproc;opencv_highgui;opencv_features2d"
  IMPORTED_LOCATION_NONE "${_IMPORT_PREFIX}/lib/libopencv_ts.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_ts )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_ts "${_IMPORT_PREFIX}/lib/libopencv_ts.a" )

# Import target "opencv_videostab" for configuration "None"
set_property(TARGET opencv_videostab APPEND PROPERTY IMPORTED_CONFIGURATIONS NONE)
set_target_properties(opencv_videostab PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_NONE "opencv_core;opencv_flann;opencv_imgproc;opencv_highgui;opencv_features2d;opencv_calib3d;opencv_ml;opencv_video;opencv_legacy;opencv_objdetect;opencv_photo;opencv_gpu"
  IMPORTED_LOCATION_NONE "${_IMPORT_PREFIX}/lib/libopencv_videostab.2.4.7.dylib"
  IMPORTED_SONAME_NONE "lib/libopencv_videostab.2.4.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS opencv_videostab )
list(APPEND _IMPORT_CHECK_FILES_FOR_opencv_videostab "${_IMPORT_PREFIX}/lib/libopencv_videostab.2.4.7.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
