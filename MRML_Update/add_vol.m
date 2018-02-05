function add_vol_up(file_name, func)
%Add a volume to the mrml scene
global volume_new;
global data;

if isfield(data.MRML, 'Volume')
    next_id = size(data.MRML.Volume, 2) + 1;
else 
    next_id = 1;
    data.MRML.VolumeDisplay.Attributes.id = '';
    data.MRML.SceneView.VolumeDisplay.Attributes.id = '';
    data.MRML.Volume.Attributes.id = '';
    data.MRML.SceneView.Volume.Attributes.id = '';
    data.MRML.VolumeArchetypeStorage.Attributes.id = '';
    data.MRML.SceneView.VolumeArchetypeStorage.Attributes.id = '';
end

volume_new{next_id}.number = next_id;
volume_new{next_id}.func = func;

info_vol(file_name, next_id);
volumedisplay_node_up(next_id, 'Grey', '500', '299', '32000', '-32000');
volumearchetypestorage_node_up(next_id);
volume_node_up(next_id);
end