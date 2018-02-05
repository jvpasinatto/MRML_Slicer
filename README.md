# MRML_Slicer

Matlab functions for adding modalities and scenes to a mrml scene file.

## Requirements

* [spm12](http://www.fil.ion.ucl.ac.uk/spm/software/spm12/)

## Adding Modalities
 
### Add Volumes
```matlab
add_vol('filepath.nii', )
```
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
