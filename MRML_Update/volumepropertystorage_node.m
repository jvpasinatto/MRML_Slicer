function volumepropertystorage_node_up(num, filename)

global data;

num_str = num2str(num);
id2 = strcat('vtkMRMLVolumePropertyStorageNode', num_str);

if isstruct(data.MRML.VolumePropertyStorage)
    f={};
    f{1} = data.MRML.VolumePropertyStorage;
    data.MRML.VolumePropertyStorage = f;
    f={};
    f{1} = data.MRML.SceneView.VolumePropertyStorage;
    data.MRML.SceneView.VolumePropertyStorage = f;
end

data.MRML.VolumePropertyStorage{num}.Attributes.id = id2;
data.MRML.VolumePropertyStorage{num}.Attributes.name = 'VolumePropertyStorage';
data.MRML.VolumePropertyStorage{num}.Attributes.hideFromEditors = 'true';
data.MRML.VolumePropertyStorage{num}.Attributes.selectable = 'true';
data.MRML.VolumePropertyStorage{num}.Attributes.selected = 'false';
data.MRML.VolumePropertyStorage{num}.Attributes.fileName = filename;
data.MRML.VolumePropertyStorage{num}.Attributes.useCompression = '1';
data.MRML.VolumePropertyStorage{num}.Attributes.defaultWriteFileExtension = 'vp';
data.MRML.VolumePropertyStorage{num}.Attributes.readState = '0';
data.MRML.VolumePropertyStorage{num}.Attributes.writeState = '0';

data.MRML.SceneView.VolumePropertyStorage{num}.Attributes.id = id2;
data.MRML.SceneView.VolumePropertyStorage{num}.Attributes.name = 'VolumePropertyStorage';
data.MRML.SceneView.VolumePropertyStorage{num}.Attributes.hideFromEditors = 'true';
data.MRML.SceneView.VolumePropertyStorage{num}.Attributes.selectable = 'true';
data.MRML.SceneView.VolumePropertyStorage{num}.Attributes.selected = 'false';
data.MRML.SceneView.VolumePropertyStorage{num}.Attributes.fileName = filename;
data.MRML.SceneView.VolumePropertyStorage{num}.Attributes.useCompression = '1';
data.MRML.SceneView.VolumePropertyStorage{num}.Attributes.defaultWriteFileExtension = 'vp';
data.MRML.SceneView.VolumePropertyStorage{num}.Attributes.readState = '0';
data.MRML.SceneView.VolumePropertyStorage{num}.Attributes.writeState = '0';

end