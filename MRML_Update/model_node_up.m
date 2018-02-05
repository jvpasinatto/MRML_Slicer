function model_node_up(num, filename)

global data;

num_str = num2str(num);
id2 = strcat('vtkMRMLModelNode', num_str);
dispref = strcat('vtkMRMLModelDisplayNode', num_str);
strag = strcat('vtkMRMLModelStorageNode', num_str);
disp = strcat('display:vtkMRMLModelDisplayNode', num_str ,';storage:vtkMRMLModelStorageNode', num_str, ';');
name = strsplit(filename,'.'); 
name = char(name(1));

if isstruct(data.MRML.Model)
    f={};
    f{1} = data.MRML.Model;
    data.MRML.Model = f;
    f={};
    f{1} = data.MRML.SceneView.Model;
    data.MRML.SceneView.Model = f;
end

data.MRML.Model{num}.Attributes.id = id2;
data.MRML.Model{num}.Attributes.name = name;
data.MRML.Model{num}.Attributes.hideFromEditors = 'false';
data.MRML.Model{num}.Attributes.selectable = 'true';
data.MRML.Model{num}.Attributes.selected = 'false';
data.MRML.Model{num}.Attributes.displayNodeRef = dispref; 
data.MRML.Model{num}.Attributes.storageNodeRef = strag;   
data.MRML.Model{num}.Attributes.references = disp;        
data.MRML.Model{num}.Attributes.userTags = '';

data.MRML.SceneView.Model{num}.Attributes.id = id2;
data.MRML.SceneView.Model{num}.Attributes.name = name;
data.MRML.SceneView.Model{num}.Attributes.hideFromEditors = 'false';
data.MRML.SceneView.Model{num}.Attributes.selectable = 'true';
data.MRML.SceneView.Model{num}.Attributes.selected = 'false';
data.MRML.SceneView.Model{num}.Attributes.displayNodeRef = dispref;
data.MRML.SceneView.Model{num}.Attributes.storageNodeRef = strag;
data.MRML.SceneView.Model{num}.Attributes.references = disp;
data.MRML.SceneView.Model{num}.Attributes.userTags = '';
    
    
end