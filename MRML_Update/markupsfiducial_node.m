function markupsfiducial_node_up(num, filename)

global data;

num_str = num2str(num);
id2 = strcat('vtkMRMLMarkupsFiducialNode', num_str);
dispref = strcat('vtkMRMLMarkupsDisplayNode', num_str);
strag = strcat('vtkMRMLMarkupsFiducialStorageNode', num_str);
disp = strcat('display:vtkMRMLMarkupsDisplayNode', num_str ,';storage:vtkMRMLMarkupsFiducialStorageNode', num_str, ';');
name = strsplit(filename,'.'); 
name = char(name(1));

if isstruct(data.MRML.MarkupsFiducial)
    f={};
    f{1} = data.MRML.MarkupsFiducial;
    data.MRML.MarkupsFiducial = f;
    f={};
    f{1} = data.MRML.SceneView.MarkupsFiducial;
    data.MRML.SceneView.MarkupsFiducial = f;
end

data.MRML.MarkupsFiducial{num}.Attributes.id = id2;
data.MRML.MarkupsFiducial{num}.Attributes.name = name;
data.MRML.MarkupsFiducial{num}.Attributes.hideFromEditors = 'false';
data.MRML.MarkupsFiducial{num}.Attributes.selectable = 'true';
data.MRML.MarkupsFiducial{num}.Attributes.selected = 'false';
data.MRML.MarkupsFiducial{num}.Attributes.displayNodeRef = dispref; 
data.MRML.MarkupsFiducial{num}.Attributes.storageNodeRef = strag;   
data.MRML.MarkupsFiducial{num}.Attributes.references = disp;        
data.MRML.MarkupsFiducial{num}.Attributes.userTags = '';
data.MRML.MarkupsFiducial{num}.Attributes.markupLabelFormat = '%N-%d';

data.MRML.SceneView.MarkupsFiducial{num}.Attributes.id = id2;
data.MRML.SceneView.MarkupsFiducial{num}.Attributes.name = name;
data.MRML.SceneView.MarkupsFiducial{num}.Attributes.hideFromEditors = 'false';
data.MRML.SceneView.MarkupsFiducial{num}.Attributes.selectable = 'true';
data.MRML.SceneView.MarkupsFiducial{num}.Attributes.selected = 'false';
data.MRML.SceneView.MarkupsFiducial{num}.Attributes.displayNodeRef = dispref;
data.MRML.SceneView.MarkupsFiducial{num}.Attributes.storageNodeRef = strag;
data.MRML.SceneView.MarkupsFiducial{num}.Attributes.references = disp;
data.MRML.SceneView.MarkupsFiducial{num}.Attributes.userTags = '';
data.MRML.SceneView.MarkupsFiducial{num}.Attributes.markupLabelFormat = '%N-%d';

end