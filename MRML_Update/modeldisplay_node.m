function modeldisplay_node_up(num)

global data;

num_str = num2str(num);
id2 = strcat('vtkMRMLModelDisplayNode', num_str);

if isstruct(data.MRML.ModelDisplay)
    f={};
    f{1} = data.MRML.ModelDisplay;
    data.MRML.ModelDisplay = f;
    f={};
    f{1} = data.MRML.SceneView.ModelDisplay;
    data.MRML.SceneView.ModelDisplay = f;
end

data.MRML.ModelDisplay{num}.Attributes.id = id2;
data.MRML.ModelDisplay{num}.Attributes.name ='ModelDisplay';
data.MRML.ModelDisplay{num}.Attributes.hideFromEditors ='true';
data.MRML.ModelDisplay{num}.Attributes.selectable ='true';
data.MRML.ModelDisplay{num}.Attributes.selected ='false';
data.MRML.ModelDisplay{num}.Attributes.color = '0.5 0.5 0.5';
data.MRML.ModelDisplay{num}.Attributes.edgeColor ='0 0 0';
data.MRML.ModelDisplay{num}.Attributes.selectedColor = '1 0 0';
data.MRML.ModelDisplay{num}.Attributes.selectedAmbient = '0.4';
data.MRML.ModelDisplay{num}.Attributes.ambient ='0';
data.MRML.ModelDisplay{num}.Attributes.diffuse = '1';
data.MRML.ModelDisplay{num}.Attributes.selectedSpecular = '0.5';
data.MRML.ModelDisplay{num}.Attributes.specular = '0';
data.MRML.ModelDisplay{num}.Attributes.power = '1';
data.MRML.ModelDisplay{num}.Attributes.opacity = '1';
data.MRML.ModelDisplay{num}.Attributes.sliceIntersectionOpacity = '1';
data.MRML.ModelDisplay{num}.Attributes.pointSize = '1';
data.MRML.ModelDisplay{num}.Attributes.lineWidth = '1';
data.MRML.ModelDisplay{num}.Attributes.representation = '2';
data.MRML.ModelDisplay{num}.Attributes.lighting = 'true';
data.MRML.ModelDisplay{num}.Attributes.interpolation = '1';
data.MRML.ModelDisplay{num}.Attributes.shading = 'true';
data.MRML.ModelDisplay{num}.Attributes.visibility = 'true';
data.MRML.ModelDisplay{num}.Attributes.edgeVisibility = 'false';
data.MRML.ModelDisplay{num}.Attributes.clipping = 'false';
data.MRML.ModelDisplay{num}.Attributes.sliceIntersectionVisibility = 'false';
data.MRML.ModelDisplay{num}.Attributes.sliceIntersectionThickness = '1';
data.MRML.ModelDisplay{num}.Attributes.frontfaceCulling = 'false';
data.MRML.ModelDisplay{num}.Attributes.backfaceCulling = 'true';
data.MRML.ModelDisplay{num}.Attributes.scalarVisibility = 'false';
data.MRML.ModelDisplay{num}.Attributes.vectorVisibility = 'false';
data.MRML.ModelDisplay{num}.Attributes.tensorVisibility = 'false';
data.MRML.ModelDisplay{num}.Attributes.interpolateTexture = 'false';
data.MRML.ModelDisplay{num}.Attributes.scalarRangeFlag = 'UseData';
data.MRML.ModelDisplay{num}.Attributes.scalarRange = '0 1';

data.MRML.SceneView.ModelDisplay{num}.Attributes.id = id2;
data.MRML.SceneView.ModelDisplay{num}.Attributes.name ='ModelDisplay';
data.MRML.SceneView.ModelDisplay{num}.Attributes.hideFromEditors ='true';
data.MRML.SceneView.ModelDisplay{num}.Attributes.selectable ='true';
data.MRML.SceneView.ModelDisplay{num}.Attributes.selected ='false';
data.MRML.SceneView.ModelDisplay{num}.Attributes.color = '0.5 0.5 0.5';
data.MRML.SceneView.ModelDisplay{num}.Attributes.edgeColor ='0 0 0';
data.MRML.SceneView.ModelDisplay{num}.Attributes.selectedColor = '1 0 0';
data.MRML.SceneView.ModelDisplay{num}.Attributes.selectedAmbient = '0.4';
data.MRML.SceneView.ModelDisplay{num}.Attributes.ambient ='0';
data.MRML.SceneView.ModelDisplay{num}.Attributes.diffuse = '1';
data.MRML.SceneView.ModelDisplay{num}.Attributes.selectedSpecular = '0.5';
data.MRML.SceneView.ModelDisplay{num}.Attributes.specular = '0';
data.MRML.SceneView.ModelDisplay{num}.Attributes.power = '1';
data.MRML.SceneView.ModelDisplay{num}.Attributes.opacity = '1';
data.MRML.SceneView.ModelDisplay{num}.Attributes.sliceIntersectionOpacity = '1';
data.MRML.SceneView.ModelDisplay{num}.Attributes.pointSize = '1';
data.MRML.SceneView.ModelDisplay{num}.Attributes.lineWidth = '1';
data.MRML.SceneView.ModelDisplay{num}.Attributes.representation = '2';
data.MRML.SceneView.ModelDisplay{num}.Attributes.lighting = 'true';
data.MRML.SceneView.ModelDisplay{num}.Attributes.interpolation = '1';
data.MRML.SceneView.ModelDisplay{num}.Attributes.shading = 'true';
data.MRML.SceneView.ModelDisplay{num}.Attributes.visibility = 'true';
data.MRML.SceneView.ModelDisplay{num}.Attributes.edgeVisibility = 'false';
data.MRML.SceneView.ModelDisplay{num}.Attributes.clipping = 'false';
data.MRML.SceneView.ModelDisplay{num}.Attributes.sliceIntersectionVisibility = 'false';
data.MRML.SceneView.ModelDisplay{num}.Attributes.sliceIntersectionThickness = '1';
data.MRML.SceneView.ModelDisplay{num}.Attributes.frontfaceCulling = 'false';
data.MRML.SceneView.ModelDisplay{num}.Attributes.backfaceCulling = 'true';
data.MRML.SceneView.ModelDisplay{num}.Attributes.scalarVisibility = 'false';
data.MRML.SceneView.ModelDisplay{num}.Attributes.vectorVisibility = 'false';
data.MRML.SceneView.ModelDisplay{num}.Attributes.tensorVisibility = 'false';
data.MRML.SceneView.ModelDisplay{num}.Attributes.interpolateTexture = 'false';
data.MRML.SceneView.ModelDisplay{num}.Attributes.scalarRangeFlag = 'UseData';
data.MRML.SceneView.ModelDisplay{num}.Attributes.scalarRange = '0 1';

end