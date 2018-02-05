function slice_node_up(type, center_RAS)
%MRML node for storing a slice through RAS space.
%This node stores the information about how to map from RAS space to the desired slice plane.
%SliceToRAS is the matrix that rotates and translates the slice plane.
%FieldOfView tells the size of slice plane.
%Type = (R, Y, G, 4, 5, 6, 7, 8, 9)
%center_RAS = center of the image in RAS coordinates.

global data;

if type == 'R'
    data.MRML.Slice.Attributes.id = 'vtkMRMLSliceNodeRed';
    data.MRML.Slice.Attributes.name = 'Red';
    data.MRML.Slice.Attributes.layoutLabel =  'R';
    data.MRML.Slice.Attributes.layoutName =  'Red';
    data.MRML.Slice.Attributes.singletonTag =  'Red';
    data.MRML.Slice.Attributes.orientation =  'Axial';
    data.MRML.Slice.Attributes.orientationReference =  'Axial';
    vec_RAS = [-1 0 0 center_RAS(1) 0 1 0 center_RAS(2) 0 0 1 center_RAS(3) 0 0 0 1];
    str_vec = mat2str(vec_RAS, 7);
    data.MRML.Slice.Attributes.sliceToRAS = str_vec(2:end-1);
elseif type == 'Y'
    data.MRML.Slice.Attributes.id = 'vtkMRMLSliceNodeYellow';
    data.MRML.Slice.Attributes.name = 'Yellow';
    data.MRML.Slice.Attributes.layoutLabel =  'Y';
    data.MRML.Slice.Attributes.layoutName =  'Yellow';
    data.MRML.Slice.Attributes.singletonTag =  'Yellow';
    data.MRML.Slice.Attributes.orientation =  'Sagittal';
    data.MRML.Slice.Attributes.orientationReference =  'Sagittal';
    vec_RAS = [0 0 1 center_RAS(1) -1 0 0 center_RAS(2) 0 1 0 center_RAS(3) 0 0 0 1];
    str_vec = mat2str(vec_RAS,7);
    data.MRML.Slice.Attributes.sliceToRAS = str_vec(2:end-1);
elseif type == 'G'
    data.MRML.Slice.Attributes.id = 'vtkMRMLSliceNodeGreen';
    data.MRML.Slice.Attributes.name = 'Green';
    data.MRML.Slice.Attributes.layoutLabel =  'G';
    data.MRML.Slice.Attributes.layoutName =  'Green';
    data.MRML.Slice.Attributes.singletonTag =  'Green';
    data.MRML.Slice.Attributes.orientation =  'Coronal';
    data.MRML.Slice.Attributes.orientationReference =  'Coronal';
    vec_RAS = [-1 0 0 center_RAS(1) 0 0 1 center_RAS(2) 0 1 0 center_RAS(3) 0 0 0 1];
    str_vec = mat2str(vec_RAS,7);
    data.MRML.Slice.Attributes.sliceToRAS = str_vec(2:end-1);
elseif type == '4'
    data.MRML.Slice.Attributes.id = 'vtkMRMLSliceNodeSlice4';
    data.MRML.Slice.Attributes.name = 'Slice4';
    data.MRML.Slice.Attributes.layoutLabel =  '4';
    data.MRML.Slice.Attributes.layoutName =  'Slice4';
    data.MRML.Slice.Attributes.singletonTag =  'Slice4';
    data.MRML.Slice.Attributes.orientation =  'Axial';
    data.MRML.Slice.Attributes.orientationReference =  'Axial';
    vec_RAS = [-1 0 0 center_RAS(1) 0 1 0 center_RAS(2) 0 0 1 center_RAS(3) 0 0 0 1];
    str_vec = mat2str(vec_RAS,7);
    data.MRML.Slice.Attributes.sliceToRAS = str_vec(2:end-1);
elseif type == '5'
    data.MRML.Slice.Attributes.id = 'vtkMRMLSliceNodeSlice5';
    data.MRML.Slice.Attributes.name = 'Slice5';
    data.MRML.Slice.Attributes.layoutLabel =  '5';
    data.MRML.Slice.Attributes.layoutName =  'Slice5';
    data.MRML.Slice.Attributes.singletonTag =  'Slice5';
    data.MRML.Slice.Attributes.orientation =  'Sagittal';
    data.MRML.Slice.Attributes.orientationReference =  'Sagittal';
    vec_RAS = [0 0 1 center_RAS(1) -1 0 0 center_RAS(2) 0 1 0 center_RAS(3) 0 0 0 1];
    str_vec = mat2str(vec_RAS,7);
    data.MRML.Slice.Attributes.sliceToRAS = str_vec(2:end-1);
elseif type == '6'
    data.MRML.Slice.Attributes.id = 'vtkMRMLSliceNodeSlice6';
    data.MRML.Slice.Attributes.name = 'Slice6';
    data.MRML.Slice.Attributes.layoutLabel =  '6';
    data.MRML.Slice.Attributes.layoutName =  'Slice6';
    data.MRML.Slice.Attributes.singletonTag =  'Slice6';
    data.MRML.Slice.Attributes.orientation =  'Coronal';
    data.MRML.Slice.Attributes.orientationReference =  'Coronal';
    vec_RAS = [-1 0 0 center_RAS(1) 0 0 1 center_RAS(2) 0 1 0 center_RAS(3) 0 0 0 1];
    str_vec = mat2str(vec_RAS,7);
    data.MRML.Slice.Attributes.sliceToRAS = str_vec(2:end-1);
elseif type == '7'
    data.MRML.Slice.Attributes.id = 'vtkMRMLSliceNodeSlice7';
    data.MRML.Slice.Attributes.name = 'Slice7';
    data.MRML.Slice.Attributes.layoutLabel =  '7';
    data.MRML.Slice.Attributes.layoutName =  'Slice7';
    data.MRML.Slice.Attributes.singletonTag =  'Slice7';
    data.MRML.Slice.Attributes.orientation =  'Axial';
    data.MRML.Slice.Attributes.orientationReference =  'Axial';
    vec_RAS = [-1 0 0 center_RAS(1) 0 1 0 center_RAS(2) 0 0 1 center_RAS(3) 0 0 0 1];
    str_vec = mat2str(vec_RAS,7);
    data.MRML.Slice.Attributes.sliceToRAS = str_vec(2:end-1);
elseif type == '8'
    data.MRML.Slice.Attributes.id = 'vtkMRMLSliceNodeSlice8';
    data.MRML.Slice.Attributes.name = 'Slice8';
    data.MRML.Slice.Attributes.layoutLabel =  '8';
    data.MRML.Slice.Attributes.layoutName =  'Slice8';
    data.MRML.Slice.Attributes.singletonTag =  'Slice8';
    data.MRML.Slice.Attributes.orientation =  'Sagittal';
    data.MRML.Slice.Attributes.orientationReference =  'Sagittal';
    vec_RAS = [0 0 1 center_RAS(1) -1 0 0 center_RAS(2) 0 1 0 center_RAS(3) 0 0 0 1];
    str_vec = mat2str(vec_RAS,7);
    data.MRML.Slice.Attributes.sliceToRAS = str_vec(2:end-1);
elseif type == '9'
    data.MRML.Slice.Attributes.id = 'vtkMRMLSliceNodeSlice9';
    data.MRML.Slice.Attributes.name = 'Slice9';
    data.MRML.Slice.Attributes.layoutLabel =  '9';
    data.MRML.Slice.Attributes.layoutName =  'Slice9';
    data.MRML.Slice.Attributes.singletonTag =  'Slice9';
    data.MRML.Slice.Attributes.orientation =  'Coronal';
    data.MRML.Slice.Attributes.orientationReference =  'Coronal';
    vec_RAS = [-1 0 0 center_RAS(1) 0 0 1 center_RAS(2) 0 1 0 center_RAS(3) 0 0 0 1];
    str_vec = mat2str(vec_RAS,7);
    data.MRML.Slice.Attributes.sliceToRAS = str_vec(2:end-1);
end
data.MRML.Slice.Attributes.hideFromEditors = 'false';
data.MRML.Slice.Attributes.selectable = 'true';
data.MRML.Slice.Attributes.selected = 'false';
data.MRML.Slice.Attributes.Attributess =  'MappedInLayout:1';
data.MRML.Slice.Attributes.active =  'false';
data.MRML.Slice.Attributes.visibility =  'true' ;
data.MRML.Slice.Attributes.backgroundColor =  '0 0 0';
data.MRML.Slice.Attributes.backgroundColor2 =  '0 0 0';
data.MRML.Slice.Attributes.orientationMarkerType =  'none';
data.MRML.Slice.Attributes.orientationMarkerSize =  'medium';
data.MRML.Slice.Attributes.rulerType =  'none';
data.MRML.Slice.Attributes.AxisLabels =  'L;R;P;A;I;S';
data.MRML.Slice.Attributes.fieldOfView =  '272.092 243.887 0.500009'; %verificar
data.MRML.Slice.Attributes.dimensions =  '328 295 1'; %verificar
data.MRML.Slice.Attributes.xyzOrigin =  '0 0 0';
data.MRML.Slice.Attributes.SliceResolutionMode =  '1';
data.MRML.Slice.Attributes.uvwExtents =  '272.092 243.887 0.500009'; %verificar
data.MRML.Slice.Attributes.uvwDimensions =  '256 256 1';
data.MRML.Slice.Attributes.uvwOrigin =  '0 0 0';
data.MRML.Slice.Attributes.activeSlice =  '0';
data.MRML.Slice.Attributes.layoutGridRows =  '1';
data.MRML.Slice.Attributes.layoutGridColumns =  '1';
data.MRML.Slice.Attributes.orientationMatrixAxial =  '-1 0 0 0 1 0 0 0 1';
data.MRML.Slice.Attributes.orientationMatrixSagittal =  '0 0 1 -1 0 0 0 1 0';
data.MRML.Slice.Attributes.orientationMatrixCoronal =  '-1 0 0 0 0 1 0 1 0';
data.MRML.Slice.Attributes.layoutColor =  '0.952941 0.290196 0.2'; %verificar
data.MRML.Slice.Attributes.jumpMode =  '1';
data.MRML.Slice.Attributes.sliceVisibility =  'false';
data.MRML.Slice.Attributes.widgetVisibility =  'false';
data.MRML.Slice.Attributes.useLabelOutline =  'false';
data.MRML.Slice.Attributes.sliceSpacingMode =  '0';
data.MRML.Slice.Attributes.prescribedSliceSpacing =  '1 1 1';
end