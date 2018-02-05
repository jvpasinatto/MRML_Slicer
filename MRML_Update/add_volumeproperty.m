function add_volumeproperty(filename)
%Add a volume property to the scene.
global data;

if isfield(data.MRML, 'VolumeProperty')
    next_id = size(data.MRML.VolumeProperty, 2) + 1;
else 
    next_id = 1;
    data.MRML.VolumeProperty.Attributes.id = '';
    data.MRML.SceneView.VolumeProperty.Attributes.id = '';
    data.MRML.VolumePropertyStorage.Attributes.id = '';
    data.MRML.SceneView.VolumePropertyStorage.Attributes.id = '';
end

volumeproperty_node_up(next_id, filename)
volumepropertystorage_node_up(next_id, filename)
end