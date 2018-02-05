function slicecomposite_node_up(fore_id, back_id, label_id, type)
%MRML node for storing a slice through RAS space.
%This node stores the information about how to composite two
%vtkMRMLVolumes  into a single display image.
global data;


if type == 'R'
    data.MRML.SliceComposite.Attributes.singletonTag = 'Red';
    data.MRML.SliceComposite.Attributes.id ='vtkMRMLSliceCompositeNodeRed';
    data.MRML.SliceComposite.Attributes.layoutName = 'Red';
    data.MRML.SliceComposite.Attributes.name ='SliceComposite';
elseif type == 'Y'
    data.MRML.SliceComposite.Attributes.singletonTag = 'Yellow';
    data.MRML.SliceComposite.Attributes.id ='vtkMRMLSliceCompositeNodeYellow';
    data.MRML.SliceComposite.Attributes.layoutName = 'Yellow';
    data.MRML.SliceComposite.Attributes.name ='SliceComposite_1';
elseif type == 'G'
    data.MRML.SliceComposite.Attributes.singletonTag = 'Green';
    data.MRML.SliceComposite.Attributes.id ='vtkMRMLSliceCompositeNodeGreen';
    data.MRML.SliceComposite.Attributes.layoutName = 'Green';
    data.MRML.SliceComposite.Attributes.name ='SliceComposite_2';
elseif type == '4'
    data.MRML.SliceComposite.Attributes.singletonTag = 'Slice4';
    data.MRML.SliceComposite.Attributes.id ='vtkMRMLSliceCompositeNodeSlice4';
    data.MRML.SliceComposite.Attributes.layoutName = 'Slice4';
    data.MRML.SliceComposite.Attributes.name ='SliceComposite_3';
elseif type == '5'
    data.MRML.SliceComposite.Attributes.singletonTag = 'Slice5';
    data.MRML.SliceComposite.Attributes.id ='vtkMRMLSliceCompositeNodeSlice5';
    data.MRML.SliceComposite.Attributes.layoutName = 'Slice5';
    data.MRML.SliceComposite.Attributes.name ='SliceComposite_4';
elseif type == '6'
    data.MRML.SliceComposite.Attributes.singletonTag = 'Slice6';
    data.MRML.SliceComposite.Attributes.id ='vtkMRMLSliceCompositeNodeSlice6';
    data.MRML.SliceComposite.Attributes.layoutName = 'Slice6';
    data.MRML.SliceComposite.Attributes.name ='SliceComposite_5';
elseif type == '7'
    data.MRML.SliceComposite.Attributes.singletonTag = 'Slice7';
    data.MRML.SliceComposite.Attributes.id ='vtkMRMLSliceCompositeNodeSlice7';
    data.MRML.SliceComposite.Attributes.layoutName = 'Slice7';
    data.MRML.SliceComposite.Attributes.name ='SliceComposite_6';
elseif type == '8'
    data.MRML.SliceComposite.Attributes.singletonTag = 'Slice8';
    data.MRML.SliceComposite.Attributes.id ='vtkMRMLSliceCompositeNodeSlice8';
    data.MRML.SliceComposite.Attributes.layoutName = 'Slice8';
    data.MRML.SliceComposite.Attributes.name ='SliceComposite_7';
elseif type == '9'
    data.MRML.SliceComposite.Attributes.singletonTag = 'Slice9';
    data.MRML.SliceComposite.Attributes.id ='vtkMRMLSliceCompositeNodeSlice9';
    data.MRML.SliceComposite.Attributes.layoutName = 'Slice9';
    data.MRML.SliceComposite.Attributes.name ='SliceComposite_8';
end



back_id = num2str(back_id);
back_id = strcat('vtkMRMLScalarVolumeNode', back_id);
data.MRML.SliceComposite.Attributes.backgroundVolumeID = back_id;
fore_id = num2str(fore_id);
fore_id = strcat('vtkMRMLScalarVolumeNode', fore_id);
data.MRML.SliceComposite.Attributes.foregroundVolumeID = fore_id;
label_id = num2str(label_id);
label_id = strcat('vtkMRMLScalarVolumeNode', label_id);
data.MRML.SliceComposite.Attributes.labelVolumeID = label_id;

data.MRML.SliceComposite.Attributes.hideFromEditors ='true';
data.MRML.SliceComposite.Attributes.selectable ='true';
data.MRML.SliceComposite.Attributes.selected ='false';
data.MRML.SliceComposite.Attributes.compositing = '0';
data.MRML.SliceComposite.Attributes.foregroundOpacity = '0'; 
data.MRML.SliceComposite.Attributes.labelOpacity = '1';
data.MRML.SliceComposite.Attributes.linkedControl = '0';
data.MRML.SliceComposite.Attributes.fiducialVisibility = '1';
data.MRML.SliceComposite.Attributes.fiducialLabelVisibility = '1';
data.MRML.SliceComposite.Attributes.sliceIntersectionVisibility = '0';
data.MRML.SliceComposite.Attributes.annotationSpace = 'IJKAndRAS';
data.MRML.SliceComposite.Attributes.annotationMode = 'All';
data.MRML.SliceComposite.Attributes.doPropagateVolumeSelection = '1';

%SceneView

if type == 'R'
    data.MRML.SceneView.SliceComposite.Attributes.singletonTag = 'Red';
    data.MRML.SceneView.SliceComposite.Attributes.id ='vtkMRMLSliceCompositeNodeRed';
    data.MRML.SceneView.SliceComposite.Attributes.layoutName = 'Red';
    data.MRML.SceneView.SliceComposite.Attributes.name ='SliceComposite';
elseif type == 'Y'
    data.MRML.SceneView.SliceComposite.Attributes.singletonTag = 'Yellow';
    data.MRML.SceneView.SliceComposite.Attributes.id ='vtkMRMLSliceCompositeNodeYellow';
    data.MRML.SceneView.SliceComposite.Attributes.layoutName = 'Yellow';
    data.MRML.SceneView.SliceComposite.Attributes.name ='SliceComposite_1';
elseif type == 'G'
    data.MRML.SceneView.SliceComposite.Attributes.singletonTag = 'Green';
    data.MRML.SceneView.SliceComposite.Attributes.id ='vtkMRMLSliceCompositeNodeGreen';
    data.MRML.SceneView.SliceComposite.Attributes.layoutName = 'Green';
    data.MRML.SceneView.SliceComposite.Attributes.name ='SliceComposite_2';
elseif type == '4'
    data.MRML.SceneView.SliceComposite.Attributes.singletonTag = 'Slice4';
    data.MRML.SceneView.SliceComposite.Attributes.id ='vtkMRMLSliceCompositeNodeSlice4';
    data.MRML.SceneView.SliceComposite.Attributes.layoutName = 'Slice4';
    data.MRML.SceneView.SliceComposite.Attributes.name ='SliceComposite_3';
elseif type == '5'
    data.MRML.SceneView.SliceComposite.Attributes.singletonTag = 'Slice5';
    data.MRML.SceneView.SliceComposite.Attributes.id ='vtkMRMLSliceCompositeNodeSlice5';
    data.MRML.SceneView.SliceComposite.Attributes.layoutName = 'Slice5';
    data.MRML.SceneView.SliceComposite.Attributes.name ='SliceComposite_4';
elseif type == '6'
    data.MRML.SceneView.SliceComposite.Attributes.singletonTag = 'Slice6';
    data.MRML.SceneView.SliceComposite.Attributes.id ='vtkMRMLSliceCompositeNodeSlice6';
    data.MRML.SceneView.SliceComposite.Attributes.layoutName = 'Slice6';
    data.MRML.SceneView.SliceComposite.Attributes.name ='SliceComposite_5';
elseif type == '7'
    data.MRML.SceneView.SliceComposite.Attributes.singletonTag = 'Slice7';
    data.MRML.SceneView.SliceComposite.Attributes.id ='vtkMRMLSliceCompositeNodeSlice7';
    data.MRML.SceneView.SliceComposite.Attributes.layoutName = 'Slice7';
    data.MRML.SceneView.SliceComposite.Attributes.name ='SliceComposite_6';
elseif type == '8'
    data.MRML.SceneView.SliceComposite.Attributes.singletonTag = 'Slice8';
    data.MRML.SceneView.SliceComposite.Attributes.id ='vtkMRMLSliceCompositeNodeSlice8';
    data.MRML.SceneView.SliceComposite.Attributes.layoutName = 'Slice8';
    data.MRML.SceneView.SliceComposite.Attributes.name ='SliceComposite_7';
elseif type == '9'
    data.MRML.SceneView.SliceComposite.Attributes.singletonTag = 'Slice9';
    data.MRML.SceneView.SliceComposite.Attributes.id ='vtkMRMLSliceCompositeNodeSlice9';
    data.MRML.SceneView.SliceComposite.Attributes.layoutName = 'Slice9';
    data.MRML.SceneView.SliceComposite.Attributes.name ='SliceComposite_8';
end



back_id = num2str(back_id);
back_id = strcat('vtkMRMLScalarVolumeNode', back_id);
data.MRML.SceneView.SliceComposite.Attributes.backgroundVolumeID = back_id;
fore_id = num2str(fore_id);
fore_id = strcat('vtkMRMLScalarVolumeNode', fore_id);
data.MRML.SceneView.SliceComposite.Attributes.foregroundVolumeID = fore_id;
label_id = num2str(label_id);
label_id = strcat('vtkMRMLScalarVolumeNode', label_id);
data.MRML.SceneView.SliceComposite.Attributes.labelVolumeID = label_id;


data.MRML.SceneView.SliceComposite.Attributes.hideFromEditors ='true';
data.MRML.SceneView.SliceComposite.Attributes.selectable ='true';
data.MRML.SceneView.SliceComposite.Attributes.selected ='false';
data.MRML.SceneView.SliceComposite.Attributes.compositing = '0';
data.MRML.SceneView.SliceComposite.Attributes.foregroundOpacity = '0'; 
data.MRML.SceneView.SliceComposite.Attributes.labelOpacity = '1';
data.MRML.SceneView.SliceComposite.Attributes.linkedControl = '0';
data.MRML.SceneView.SliceComposite.Attributes.fiducialVisibility = '1';
data.MRML.SceneView.SliceComposite.Attributes.fiducialLabelVisibility = '1';
data.MRML.SceneView.SliceComposite.Attributes.sliceIntersectionVisibility = '0';
data.MRML.SceneView.SliceComposite.Attributes.annotationSpace = 'IJKAndRAS';
data.MRML.SceneView.SliceComposite.Attributes.annotationMode = 'All';
data.MRML.SceneView.SliceComposite.Attributes.doPropagateVolumeSelection = '1';

















end