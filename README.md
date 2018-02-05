# MRML_Slicer

Matlab functions for adding modalities and scenes to a mrml scene file.

## Requirements

* [spm12](http://www.fil.ion.ucl.ac.uk/spm/software/spm12/)

## Structure Tree
![image](https://github.com/jvpasinatto/MRML_Slicer/blob/master/MRML_UP.png "Structure Tree")

## Adding Modalities
 
### Add Volume
```matlab
add_vol('../file.nii', 'background')
```

### Functions:

#### info_vol
Function that get info from de header of the .nii file.

#### volumedisplay_node
Node that stores the info about how to display the volume in the scene.
Here you can change, among others, the following parameters:
* Window
* Level
* ColorNode
* Threshold
* Auto WindowLevel
* Auto Threshold
* Interpolate


#### volumearchetypestorage_node
Node that stores the info about the storage of the .nii volume file.

#### volume_node
Node that represents the volume, stores the references to the display and storage nodes and also basic info about the volume.


### Add Model
```matlab
add_model('../file.vtp')
```

###Functions:

#### model_node
Node that represents the model, stores the references to the display and storage nodes and also basic info about the model.

#### modeldisplay_node
Node that stores the info about how to display the 3D view of the model in the scene.
Here you can change, among others, the following parameters:
* FrontfaceCulling
* BackfaceCulling
* EdgeVisibility
* Visibility

#### modelstorage_node
Node that stores the info about the storage of the .vtp model file.


### Add Markups
```matlab
add_markups('../file.fcsv')
```

### Functions:

#### markupsfiducial_node
Node that represents the fiducial markups, stores the references to the display and storage nodes and also basic info about the markups.

#### markupsdisplay_node
Node that stores the info about how to display the fiducial points in the scene.
Here you can change, among others, the following parameters:
* Opacity
* Scale
* Interpolation
* Visibility

#### markupsstorage_node
Node that stores the info about the storage of the .fcsv file.


### Add Volume Properties
```matlab
add_volumeproperty('../file.vp')
```
## Adding Scene View
### Add SceneView
```matlab
add_view()
```
