find_package(Slicer CONFIG REQUIRED)

set(modules
  SlicerMarkupsToModel::Logic
  SlicerMarkupsToModel::MRML
)

include(VTKSDKPythonWheelHelper)

vtksdk_build_modules(${SKBUILD_PROJECT_NAME}
  MODULES ${modules}
  DEPENDENCIES slicer_core
  LAYOUT Runtime
)

vtksdk_generate_package_init(${SKBUILD_PROJECT_NAME}
  MODULES ${modules}
  DEPENDENCIES slicer_core
)

# Make this package part of the slicer meta package
install(FILES
  ${CMAKE_SOURCE_DIR}/Python/slicer_markups_to_model.py
  DESTINATION slicer
)
