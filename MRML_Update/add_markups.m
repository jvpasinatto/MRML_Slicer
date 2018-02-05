function add_markups_up(file_name)
%Add fiducial markups to the scene.
global data;

if isfield(data.MRML, 'MarkupsFiducial')
    next_id = size(data.MRML.MarkupsFiducial, 2) + 1;
else 
    next_id = 1;
    data.MRML.MarkupsFiducial.Attributes.id = '';
    data.MRML.SceneView.MarkupsFiducial.Attributes.id = '';
    data.MRML.MarkupsFiducialStorage.Attributes.id = '';
    data.MRML.SceneView.MarkupsFiducialStorage.Attributes.id = '';
    data.MRML.MarkupsDisplay.Attributes.id = '';
    data.MRML.SceneView.MarkupsDisplay.Attributes.id = '';
end


markupsdisplay_node(next_id);
markupsfiducial_node(next_id, file_name);
markupsfiducialstorage_node(next_id, file_name);

end
