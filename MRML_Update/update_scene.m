function update_scene(in_file, out_file)
DOMnode = xmlread(in_file); %read file
global data;
data = xml2struct(DOMnode); %convert xml to struct


add_vol('MRA.nii', 'background');
add_model('brain.vtp');
add_volumeproperty('MRA.vp');
add_markups('electrodes.fcsv');


struct2xml(data, out_file); %write to file
end
