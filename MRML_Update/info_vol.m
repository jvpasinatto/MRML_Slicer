function info_vol(vol, num)
%get info from the header of the .nii file.
%v.fname = file name.
%v.dim = dimensions of the file.
%v.mat = 4x4 matrix. The upper left 3x3 are the axis directions.
% The first 3 digits of the last column are the origin.
% The last row is just [0 0 0 1].

global volume_new;

%load volume
v = spm_vol(vol);

%get the name of the file
name = strsplit(v.fname,'.');   

%get the center postion in ijk cordinates and RAS cordinates.
center_ijk = [v.dim/2 1]';      

%get the ijk to RAS vector.
f = v.mat(1:3,1:3);             
ijk2RAS = [f(1:3,1:2)*2 f(:,3)];

%get the spacing and the boundaries.
[BB, spacing] = spm_get_bbox(v);

volume_new{num}.filename = v.fname;
volume_new{num}.name = char(name(1));
volume_new{num}.origin = mat2str(v.mat(1:3,4),7);
volume_new{num}.center_RAS = v.mat *center_ijk;
volume_new{num}.ijk2RAS = [ijk2RAS(1,:) ijk2RAS(2,:) ijk2RAS(3,:)];
volume_new{num}.spacing = spacing;

end