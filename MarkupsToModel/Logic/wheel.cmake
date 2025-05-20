set(classes 
  vtkSlicerMarkupsToModelClosedSurfaceGeneration
  vtkSlicerMarkupsToModelLogic
)

configure_file(
  ${CMAKE_CURRENT_SOURCE_DIR}/vtkSlicerMarkupsToModelModuleLogicExport.h.in
  ${CMAKE_CURRENT_BINARY_DIR}/vtkSlicerMarkupsToModelModuleLogicExport.h
  COPYONLY
)

vtk_module_add_module(SlicerMarkupsToModel::Logic
  EXPORT_MACRO_PREFIX VTK_SLICER_MARKUPSTOMODEL_MODULE_LOGIC
  CLASSES ${classes}
)
