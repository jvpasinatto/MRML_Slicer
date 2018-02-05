function volume_node_up(num)
global data;
global volume_new;

num_str = num2str(num);
strag = strcat('vtkMRMLVolumeArchetypeStorageNode', num_str);
disp = strcat('display:vtkMRMLScalarVolumeDisplayNode', num_str ,';storage:vtkMRMLVolumeArchetypeStorageNode', num_str, ';');
id2 = strcat('vtkMRMLScalarVolumeNode', num_str);
dispref = strcat('vtkMRMLScalarVolumeDisplayNode', num_str);
str_vec = volume_new{num}.ijk2RAS;
str_spacing = volume_new{num}.spacing;
str_origin = volume_new{num}.origin;
name2 = volume_new{num}.name;

if isstruct(data.MRML.Volume)
    f={};
    f{1} = data.MRML.Volume;
    data.MRML.Volume = f;
    f={};
    f{1} = data.MRML.SceneView.Volume;
    data.MRML.SceneView.Volume = f;
end

data.MRML.Volume{num}.Attributes.id = id2;
data.MRML.Volume{num}.Attributes.name = name2;
data.MRML.Volume{num}.Attributes.hideFromEditors = 'false';
data.MRML.Volume{num}.Attributes.selectable = 'true';
data.MRML.Volume{num}.Attributes.selected = 'false';
data.MRML.Volume{num}.Attributes.displayNodeRef = dispref;
data.MRML.Volume{num}.Attributes.storageNodeRef = strag;
data.MRML.Volume{num}.Attributes.references = disp;
data.MRML.Volume{num}.Attributes.userTags = '';
data.MRML.Volume{num}.Attributes.ijkToRASDirections = str_vec;
data.MRML.Volume{num}.Attributes.spacing =  str_spacing;
data.MRML.Volume{num}.Attributes.origin = str_origin(2:end-1);

data.MRML.SceneView.Volume{num}.Attributes.id = id2;
data.MRML.SceneView.Volume{num}.Attributes.name = name2;
data.MRML.SceneView.Volume{num}.Attributes.hideFromEditors = 'false';
data.MRML.SceneView.Volume{num}.Attributes.selectable = 'true';
data.MRML.SceneView.Volume{num}.Attributes.selected = 'false';
data.MRML.SceneView.Volume{num}.Attributes.displayNodeRef = dispref;
data.MRML.SceneView.Volume{num}.Attributes.storageNodeRef = strag;
data.MRML.SceneView.Volume{num}.Attributes.references = disp;
data.MRML.SceneView.Volume{num}.Attributes.userTags = '';
data.MRML.SceneView.Volume{num}.Attributes.ijkToRASDirections = str_vec;
data.MRML.SceneView.Volume{num}.Attributes.spacing =  str_spacing;
data.MRML.SceneView.Volume{num}.Attributes.origin = str_origin(2:end-1);
   
end