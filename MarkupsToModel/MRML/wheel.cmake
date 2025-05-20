set(classes 
  vtkMRMLMarkupsToModelNode
)

configure_file(
  ${CMAKE_CURRENT_SOURCE_DIR}/vtkSlicerMarkupsToModelModuleMRMLExport.h.in
  ${CMAKE_CURRENT_BINARY_DIR}/vtkSlicerMarkupsToModelModuleMRMLExport.h
  COPYONLY
)

vtk_module_add_module(SlicerMarkupsToModel::MRML
  EXPORT_MACRO_PREFIX VTK_SLICER_MARKUPSTOMODEL_MODULE_MRML
  CLASSES ${classes}
)
