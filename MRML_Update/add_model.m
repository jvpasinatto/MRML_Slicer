function add_model_up(filename)
%Add a model to the mrml scene
global data;

if isfield(data.MRML, 'Model')
    next_id = size(data.MRML.Model, 2) + 1;
else 
    next_id = 1;
    data.MRML.ModelDisplay.Attributes.id = '';
    data.MRML.SceneView.ModelDisplay.Attributes.id = '';
    data.MRML.Model.Attributes.id = '';
    data.MRML.SceneView.Model.Attributes.id = '';
    data.MRML.ModelStorage.Attributes.id = '';
    data.MRML.SceneView.ModelStorage.Attributes.id = '';
end

model_node(next_id, filename);
modelstorage_node(next_id, filename);
modeldisplay_node(next_id);
end
