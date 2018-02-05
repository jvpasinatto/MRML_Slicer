function modelstorage_node_up(num, filename)

global data;

num_str = num2str(num);
id2 = strcat('vtkMRMLModelStorageNode', num_str);

if isstruct(data.MRML.ModelStorage)
    f={};
    f{1} = data.MRML.ModelStorage;
    data.MRML.ModelStorage = f;
    f={};
    f{1} = data.MRML.SceneView.ModelStorage;
    data.MRML.SceneView.ModelStorage = f;
end


data.MRML.ModelStorage{num}.Attributes.id = id2;
data.MRML.ModelStorage{num}.Attributes.name = 'ModelStorage';
data.MRML.ModelStorage{num}.Attributes.hideFromEditors = 'true';
data.MRML.ModelStorage{num}.Attributes.selectable = 'true';
data.MRML.ModelStorage{num}.Attributes.selected = 'false';
data.MRML.ModelStorage{num}.Attributes.fileName = filename;
data.MRML.ModelStorage{num}.Attributes.useCompression = '1';
data.MRML.ModelStorage{num}.Attributes.defaultWriteFileExtension = 'vtk';
data.MRML.ModelStorage{num}.Attributes.readState = '0';
data.MRML.ModelStorage{num}.Attributes.writeState = '0';
data.MRML.ModelStorage{num}.Attributes.coordinateSystem = 'RAS';


data.MRML.SceneView.ModelStorage{num}.Attributes.id = id2;
data.MRML.SceneView.ModelStorage{num}.Attributes.name = 'ModelStorage';
data.MRML.SceneView.ModelStorage{num}.Attributes.hideFromEditors = 'true';
data.MRML.SceneView.ModelStorage{num}.Attributes.selectable = 'true';
data.MRML.SceneView.ModelStorage{num}.Attributes.selected = 'false';
data.MRML.SceneView.ModelStorage{num}.Attributes.fileName = filename;
data.MRML.SceneView.ModelStorage{num}.Attributes.useCompression = '1';
data.MRML.SceneView.ModelStorage{num}.Attributes.defaultWriteFileExtension = 'vtk';
data.MRML.SceneView.ModelStorage{num}.Attributes.readState = '0';
data.MRML.SceneView.ModelStorage{num}.Attributes.writeState = '0';
data.MRML.SceneView.ModelStorage{num}.Attributes.coordinateSystem = 'RAS';

end