function volumeproperty_node_up(num, filename)

global data;

num_str = num2str(num);
id2 = strcat('vtkMRMLVolumePropertyNode', num_str);
file_id = fopen(filename, 'r');
b = fscanf(file_id, '%f');
fclose(file_id);
b = num2str(b,5); 
strref = strcat('vtkMRMLVolumePropertyStorageNode', num_str);
ref = strcat('storage:vtkMRMLVolumePropertyStorageNode', num_str, ';');

if isstruct(data.MRML.VolumeProperty)
    f={};
    f{1} = data.MRML.VolumeProperty;
    data.MRML.VolumeProperty = f;
    f={};
    f{1} = data.MRML.SceneView.VolumeProperty;
    data.MRML.SceneView.VolumeProperty = f;
end

data.MRML.VolumeProperty{num}.Attributes.id = id2;
data.MRML.VolumeProperty{num}.Attributes.name = 'VolumeProperty';
data.MRML.VolumeProperty{num}.Attributes.hideFromEditors = 'false';
data.MRML.VolumeProperty{num}.Attributes.selectable = 'true';
data.MRML.VolumeProperty{num}.Attributes.selected = 'false';
data.MRML.VolumeProperty{num}.Attributes.storageNodeRef = strref;
data.MRML.VolumeProperty{num}.Attributes.references = ref;
data.MRML.VolumeProperty{num}.Attributes.interpolation = b(1);
data.MRML.VolumeProperty{num}.Attributes.shade = b(2);
data.MRML.VolumeProperty{num}.Attributes.diffuse = b(3);
data.MRML.VolumeProperty{num}.Attributes.ambient = b(4);
data.MRML.VolumeProperty{num}.Attributes.specular = b(5);
data.MRML.VolumeProperty{num}.Attributes.specularPower = b(6);
data.MRML.VolumeProperty{num}.Attributes.scalarOpacity = b(7:19);
data.MRML.VolumeProperty{num}.Attributes.gradientOpacity = b(20:24);
data.MRML.VolumeProperty{num}.Attributes.colorTransfer = b(25:45);


data.MRML.SceneView.VolumeProperty{num}.Attributes.id = id2;
data.MRML.SceneView.VolumeProperty{num}.Attributes.name = 'VolumeProperty';
data.MRML.SceneView.VolumeProperty{num}.Attributes.hideFromEditors = 'false';
data.MRML.SceneView.VolumeProperty{num}.Attributes.selectable = 'true';
data.MRML.SceneView.VolumeProperty{num}.Attributes.selected = 'false';
data.MRML.SceneView.VolumeProperty{num}.Attributes.storageNodeRef = strref;
data.MRML.SceneView.VolumeProperty{num}.Attributes.references = ref;
data.MRML.SceneView.VolumeProperty{num}.Attributes.interpolation = b(1);
data.MRML.SceneView.VolumeProperty{num}.Attributes.shade = b(2);
data.MRML.SceneView.VolumeProperty{num}.Attributes.diffuse = b(3);
data.MRML.SceneView.VolumeProperty{num}.Attributes.ambient = b(4);
data.MRML.SceneView.VolumeProperty{num}.Attributes.specular = b(5);
data.MRML.SceneView.VolumeProperty{num}.Attributes.specularPower = b(6);
data.MRML.SceneView.VolumeProperty{num}.Attributes.scalarOpacity = b(7:19);
data.MRML.SceneView.VolumeProperty{num}.Attributes.gradientOpacity = b(20:24);
data.MRML.SceneView.VolumeProperty{num}.Attributes.colorTransfer = b(25:45);

end