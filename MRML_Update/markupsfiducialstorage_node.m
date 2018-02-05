function markupsfiducialstorage_node_up(num, file_name)
global data;

num_str = num2str(num);
id2 = strcat('vtkMRMLMarkupsFiducialStorageNode', num_str);

if isstruct(data.MRML.MarkupsFiducialStorage)
    f={};
    f{1} = data.MRML.MarkupsFiducialStorage;
    data.MRML.MarkupsFiducialStorage = f;
    f={};
    f{1} = data.MRML.SceneView.MarkupsFiducialStorage;
    data.MRML.SceneView.MarkupsFiducialStorage = f;
end


data.MRML.MarkupsFiducialStorage{num}.Attributes.id = id2;
data.MRML.MarkupsFiducialStorage{num}.Attributes.name = 'MarkupsFiducialStorage';
data.MRML.MarkupsFiducialStorage{num}.Attributes.hideFromEditors = 'true';
data.MRML.MarkupsFiducialStorage{num}.Attributes.selectable = 'true';
data.MRML.MarkupsFiducialStorage{num}.Attributes.selected = 'false';
data.MRML.MarkupsFiducialStorage{num}.Attributes.fileName = file_name;
data.MRML.MarkupsFiducialStorage{num}.Attributes.useCompression = '1';
data.MRML.MarkupsFiducialStorage{num}.Attributes.defaultWriteFileExtension = 'fcsv';
data.MRML.MarkupsFiducialStorage{num}.Attributes.readState = '0';
data.MRML.MarkupsFiducialStorage{num}.Attributes.writeState = '0';
data.MRML.MarkupsFiducialStorage{num}.Attributes.coordinateSystem = '0';

data.MRML.SceneView.MarkupsFiducialStorage{num}.Attributes.id = id2;
data.MRML.SceneView.MarkupsFiducialStorage{num}.Attributes.name = 'MarkupsFiducialStorage';
data.MRML.SceneView.MarkupsFiducialStorage{num}.Attributes.hideFromEditors = 'true';
data.MRML.SceneView.MarkupsFiducialStorage{num}.Attributes.selectable = 'true';
data.MRML.SceneView.MarkupsFiducialStorage{num}.Attributes.selected = 'false';
data.MRML.SceneView.MarkupsFiducialStorage{num}.Attributes.fileName = file_name;
data.MRML.SceneView.MarkupsFiducialStorage{num}.Attributes.useCompression = '1';
data.MRML.SceneView.MarkupsFiducialStorage{num}.Attributes.defaultWriteFileExtension = 'fcsv';
data.MRML.SceneView.MarkupsFiducialStorage{num}.Attributes.readState = '0';
data.MRML.SceneView.MarkupsFiducialStorage{num}.Attributes.writeState = '0';
data.MRML.SceneView.MarkupsFiducialStorage{num}.Attributes.coordinateSystem = '0';

end