function layout_node_up(currentview)
%Node that describes the view layout of the application.
%   SlicerLayoutInitialView = 0, SlicerLayoutDefaultView = 1, SlicerLayoutConventionalView = 2, SlicerLayoutFourUpView = 3, 
%   SlicerLayoutOneUp3DView = 4, SlicerLayoutOneUpSliceView = 5, SlicerLayoutOneUpRedSliceView = 6, SlicerLayoutOneUpYellowSliceView = 7, 
%   SlicerLayoutOneUpGreenSliceView = 8, SlicerLayoutTabbed3DView = 9, SlicerLayoutTabbedSliceView = 10, SlicerLayoutLightboxView = 11, 
%   SlicerLayoutCompareView = 12, SlicerLayoutSideBySideLightboxView = 13, SlicerLayoutNone = 14, SlicerLayoutDual3DView = 15, 
%   SlicerLayoutConventionalWidescreenView = 16, SlicerLayoutCompareWidescreenView = 17, SlicerLayoutSingleLightboxView = 18, SlicerLayoutTriple3DEndoscopyView = 19,
%   SlicerLayout3DPlusLightboxView = 20, SlicerLayoutThreeOverThreeView = 21, SlicerLayoutFourOverFourView = 22, SlicerLayoutCompareGridView = 23, 
%   SlicerLayoutConventionalQuantitativeView = 24, SlicerLayoutFourUpQuantitativeView = 25, SlicerLayoutOneUpQuantitativeView = 26, SlicerLayoutTwoOverTwoView = 27, 
%   SlicerLayoutThreeOverThreeQuantitativeView = 28, SlicerLayoutSideBySideView = 29, SlicerLayoutFourByThreeSliceView = 30, SlicerLayoutFourByTwoSliceView = 31, 
%   SlicerLayoutFiveByTwoSliceView = 32, SlicerLayoutThreeByThreeSliceView = 33, SlicerLayoutFourUpTableView = 34, SlicerLayout3DTableView = 35, 
%   SlicerLayoutConventionalPlotView = 36, SlicerLayoutFourUpPlotView = 37, SlicerLayoutFourUpPlotTableView = 38, SlicerLayoutOneUpPlotView = 39, 
%   SlicerLayoutThreeOverThreePlotView = 40, SlicerLayoutFinalView, SlicerLayoutMaximizedView = 98, SlicerLayoutCustomView = 99, 
%   SlicerLayoutUserView = 100

global data;

data.MRML.Layout.Attribute.id = 'vtkMRMLLayoutNodevtkMRMLLayoutNode';
data.MRML.Layout.Attribute.name = 'Layout';
data.MRML.Layout.Attribute.hideFromEditors = 'true';
data.MRML.Layout.Attribute.selectable = 'true';
data.MRML.Layout.Attribute.selected = 'false';
data.MRML.Layout.Attribute.singletonTag =  'vtkMRMLLayoutNode';
data.MRML.Layout.Attribute.currentViewArrangement =  currentview;
data.MRML.Layout.Attribute.guiPanelVisibility =  '1';
data.MRML.Layout.Attribute.bottomPanelVisibility =  '1';
data.MRML.Layout.Attribute.guiPanelLR =  '0';
data.MRML.Layout.Attribute.collapseSliceControllers =  '0';
data.MRML.Layout.Attribute.numberOfCompareViewRows =  '1';
data.MRML.Layout.Attribute.numberOfCompareViewColumns =  '1';
data.MRML.Layout.Attribute.numberOfLightboxRows =  '6';
data.MRML.Layout.Attribute.numberOfLightboxColumns =  '6';
data.MRML.Layout.Attribute.mainPanelSize =  '400';
data.MRML.Layout.Attribute.secondaryPanelSize =  '400';


data.MRML.SceneView.Layout.Attribute.id = 'vtkMRMLLayoutNodevtkMRMLLayoutNode';
data.MRML.SceneView.Layout.Attribute.name = 'Layout';
data.MRML.SceneView.Layout.Attribute.hideFromEditors = 'true';
data.MRML.SceneView.Layout.Attribute.selectable = 'true';
data.MRML.SceneView.Layout.Attribute.selected = 'false';
data.MRML.SceneView.Layout.Attribute.singletonTag =  'vtkMRMLLayoutNode';
data.MRML.SceneView.Layout.Attribute.currentViewArrangement =  currentview;
data.MRML.SceneView.Layout.Attribute.guiPanelVisibility =  '1';
data.MRML.SceneView.Layout.Attribute.bottomPanelVisibility =  '1';
data.MRML.SceneView.Layout.Attribute.guiPanelLR =  '0';
data.MRML.SceneView.Layout.Attribute.collapseSliceControllers =  '0';
data.MRML.SceneView.Layout.Attribute.numberOfCompareViewRows =  '1';
data.MRML.SceneView.Layout.Attribute.numberOfCompareViewColumns =  '1';
data.MRML.SceneView.Layout.Attribute.numberOfLightboxRows =  '6';
data.MRML.SceneView.Layout.Attribute.numberOfLightboxColumns =  '6';
data.MRML.SceneView.Layout.Attribute.mainPanelSize =  '400';
data.MRML.SceneView.Layout.Attribute.secondaryPanelSize =  '400';

end