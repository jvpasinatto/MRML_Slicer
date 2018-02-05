# MRML_Slicer

Matlab functions for adding modalities and scenes to a mrml scene file.

## Requirements

* [spm12](http://www.fil.ion.ucl.ac.uk/spm/software/spm12/)

## Structure Tree
![image](https://github.com/jvpasinatto/MRML_Slicer/blob/master/MRML_UP.png "Structure Tree")

## Adding Modalities
 
### Add Volumes
```matlab
add_vol('filepath.nii', )
```
#### info_vol
Function that get info from de header of the .nii file.

#### volumedisplay_node
Node that stores the info about how to display the volume in the scene.
Here you can change the following parameters:
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


### Add Models
```matlab
add_model('filepath.vtp')
```
### Add Markups
```matlab
add_markups('filepath.fcsv')
```
### Add Volume Properties
```matlab
add_volumeproperty('filepath.vp')
```
## Adding Scene Views
### Add SceneView
```matlab
add_view()
```
