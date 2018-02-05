function volumedisplay_node_up(num, colornode, window, level, upthr, lowthr)
global data;
global volume_new;

num_id = num2str(num);

volume_new{num}.colornode = strcat('vtkMRMLColorTableNode', colornode);
volume_new{num}.upthr = upthr;
volume_new{num}.lowthr = lowthr;
volume_new{num}.window = window;
volume_new{num}.level = level;

if isstruct(data.MRML.VolumeDisplay)
    f={};
    f{1} = data.MRML.VolumeDisplay;
    data.MRML.VolumeDisplay = f;
    f={};
    f{1} = data.MRML.SceneView.VolumeDisplay;
    data.MRML.SceneView.VolumeDisplay = f;
end




data.MRML.VolumeDisplay{num}.Attributes.id = strcat('vtkMRMLScalarVolumeDisplayNode', num_id);
data.MRML.VolumeDisplay{num}.Attributes.name ='VolumeDisplay';
data.MRML.VolumeDisplay{num}.Attributes.hideFromEditors ='true';
data.MRML.VolumeDisplay{num}.Attributes.selectable ='true';
data.MRML.VolumeDisplay{num}.Attributes.selected ='false';
data.MRML.VolumeDisplay{num}.Attributes.color = '0.5 0.5 0.5';
data.MRML.VolumeDisplay{num}.Attributes.edgeColor ='0 0 0';
data.MRML.VolumeDisplay{num}.Attributes.selectedColor = '1 0 0';
data.MRML.VolumeDisplay{num}.Attributes.selectedAmbient = '0.4';
data.MRML.VolumeDisplay{num}.Attributes.ambient ='0';
data.MRML.VolumeDisplay{num}.Attributes.diffuse = '1';
data.MRML.VolumeDisplay{num}.Attributes.selectedSpecular = '0.5';
data.MRML.VolumeDisplay{num}.Attributes.specular = '0';
data.MRML.VolumeDisplay{num}.Attributes.power = '1';
data.MRML.VolumeDisplay{num}.Attributes.opacity = '1';
data.MRML.VolumeDisplay{num}.Attributes.sliceIntersectionOpacity = '1';
data.MRML.VolumeDisplay{num}.Attributes.pointSize = '1';
data.MRML.VolumeDisplay{num}.Attributes.lineWidth = '1';
data.MRML.VolumeDisplay{num}.Attributes.representation = '2';
data.MRML.VolumeDisplay{num}.Attributes.lighting = 'true';
data.MRML.VolumeDisplay{num}.Attributes.interpolation = '1';
data.MRML.VolumeDisplay{num}.Attributes.shading = 'true';
data.MRML.VolumeDisplay{num}.Attributes.visibility = 'true';
data.MRML.VolumeDisplay{num}.Attributes.edgeVisibility = 'false';
data.MRML.VolumeDisplay{num}.Attributes.clipping = 'false';
data.MRML.VolumeDisplay{num}.Attributes.sliceIntersectionVisibility = 'false';
data.MRML.VolumeDisplay{num}.Attributes.sliceIntersectionThickness = '1';
data.MRML.VolumeDisplay{num}.Attributes.frontfaceCulling = 'false';
data.MRML.VolumeDisplay{num}.Attributes.backfaceCulling = 'true';
data.MRML.VolumeDisplay{num}.Attributes.scalarVisibility = 'false';
data.MRML.VolumeDisplay{num}.Attributes.vectorVisibility = 'false';
data.MRML.VolumeDisplay{num}.Attributes.tensorVisibility = 'false';
data.MRML.VolumeDisplay{num}.Attributes.interpolateTexture = 'false';
data.MRML.VolumeDisplay{num}.Attributes.scalarRangeFlag = 'UseData';
data.MRML.VolumeDisplay{num}.Attributes.scalarRange = '0 100';
data.MRML.VolumeDisplay{num}.Attributes.colorNodeID = volume_new{num}.colornode;
data.MRML.VolumeDisplay{num}.Attributes.window = volume_new{num}.window;
data.MRML.VolumeDisplay{num}.Attributes.level = volume_new{num}.level;
data.MRML.VolumeDisplay{num}.Attributes.upperThreshold = volume_new{num}.upthr;
data.MRML.VolumeDisplay{num}.Attributes.lowerThreshold = volume_new{num}.lowthr;
data.MRML.VolumeDisplay{num}.Attributes.interpolate = '1';
data.MRML.VolumeDisplay{num}.Attributes.autoWindowLevel = '1';
data.MRML.VolumeDisplay{num}.Attributes.applyThreshold = '0';
data.MRML.VolumeDisplay{num}.Attributes.autoThreshold = '0';
data.MRML.VolumeDisplay{num}.Attributes.windowLevelLocked = 'false';


data.MRML.SceneView.VolumeDisplay{num}.Attributes.id = strcat('vtkMRMLScalarVolumeDisplayNode', num_id);
data.MRML.SceneView.VolumeDisplay{num}.Attributes.name ='VolumeDisplay';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.hideFromEditors ='true';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.selectable ='true';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.selected ='false';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.color = '0.5 0.5 0.5';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.edgeColor ='0 0 0';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.selectedColor = '1 0 0';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.selectedAmbient = '0.4';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.ambient ='0';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.diffuse = '1';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.selectedSpecular = '0.5';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.specular = '0';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.power = '1';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.opacity = '1';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.sliceIntersectionOpacity = '1';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.pointSize = '1';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.lineWidth = '1';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.representation = '2';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.lighting = 'true';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.interpolation = '1';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.shading = 'true';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.visibility = 'true';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.edgeVisibility = 'false';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.clipping = 'false';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.sliceIntersectionVisibility = 'false';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.sliceIntersectionThickness = '1';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.frontfaceCulling = 'false';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.backfaceCulling = 'true';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.scalarVisibility = 'false';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.vectorVisibility = 'false';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.tensorVisibility = 'false';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.interpolateTexture = 'false';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.scalarRangeFlag = 'UseData';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.scalarRange = '0 100';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.colorNodeID = volume_new{num}.colornode;
data.MRML.SceneView.VolumeDisplay{num}.Attributes.window = volume_new{num}.window;
data.MRML.SceneView.VolumeDisplay{num}.Attributes.level = volume_new{num}.level;
data.MRML.SceneView.VolumeDisplay{num}.Attributes.upperThreshold = volume_new{num}.upthr;
data.MRML.SceneView.VolumeDisplay{num}.Attributes.lowerThreshold = volume_new{num}.lowthr;
data.MRML.SceneView.VolumeDisplay{num}.Attributes.interpolate = '1';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.autoWindowLevel = '1';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.applyThreshold = '0';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.autoThreshold = '0';
data.MRML.SceneView.VolumeDisplay{num}.Attributes.windowLevelLocked = 'false';




end