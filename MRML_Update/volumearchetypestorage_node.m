function volumearchetypestorage_node_up(num)
global data;
global volume_new;

num_str = num2str(num);
id2 = strcat('vtkMRMLVolumeArchetypeStorageNode', num_str);


if isstruct(data.MRML.VolumeArchetypeStorage)
    f={};
    f{1} = data.MRML.VolumeArchetypeStorage;
    data.MRML.VolumeArchetypeStorage = f;
    f={};
    f{1} = data.MRML.SceneView.VolumeArchetypeStorage;
    data.MRML.SceneView.VolumeArchetypeStorage = f;
end


data.MRML.VolumeArchetypeStorage{num}.Attributes.id = id2;
data.MRML.VolumeArchetypeStorage{num}.Attributes.name = 'VolumeArchetypeStorage_3';
data.MRML.VolumeArchetypeStorage{num}.Attributes.hideFromEditors = 'true';
data.MRML.VolumeArchetypeStorage{num}.Attributes.selectable = 'true';
data.MRML.VolumeArchetypeStorage{num}.Attributes.selected = 'false';
data.MRML.VolumeArchetypeStorage{num}.Attributes.fileName = volume_new{num}.filename;
data.MRML.VolumeArchetypeStorage{num}.Attributes.useCompression = '1';
data.MRML.VolumeArchetypeStorage{num}.Attributes.defaultWriteFileExtension = 'nrrd';
data.MRML.VolumeArchetypeStorage{num}.Attributes.readState = '0';
data.MRML.VolumeArchetypeStorage{num}.Attributes.writeState = '0';
data.MRML.VolumeArchetypeStorage{num}.Attributes.centerImage = '0';
data.MRML.VolumeArchetypeStorage{num}.Attributes.UseOrientationFromFile = '1';

data.MRML.SceneView.VolumeArchetypeStorage{num}.Attributes.id = id2;
data.MRML.SceneView.VolumeArchetypeStorage{num}.Attributes.name = 'VolumeArchetypeStorage_3';
data.MRML.SceneView.VolumeArchetypeStorage{num}.Attributes.hideFromEditors = 'true';
data.MRML.SceneView.VolumeArchetypeStorage{num}.Attributes.selectable = 'true';
data.MRML.SceneView.VolumeArchetypeStorage{num}.Attributes.selected = 'false';
data.MRML.SceneView.VolumeArchetypeStorage{num}.Attributes.fileName = volume_new{num}.filename;
data.MRML.SceneView.VolumeArchetypeStorage{num}.Attributes.useCompression = '1';
data.MRML.SceneView.VolumeArchetypeStorage{num}.Attributes.defaultWriteFileExtension = 'nrrd';
data.MRML.SceneView.VolumeArchetypeStorage{num}.Attributes.readState = '0';
data.MRML.SceneView.VolumeArchetypeStorage{num}.Attributes.writeState = '0';
data.MRML.SceneView.VolumeArchetypeStorage{num}.Attributes.centerImage = '0';
data.MRML.SceneView.VolumeArchetypeStorage{num}.Attributes.UseOrientationFromFile = '1';


end