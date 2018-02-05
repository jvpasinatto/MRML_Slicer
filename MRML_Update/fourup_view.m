function fourup_view()
slice_node('R', center_RAS);       
slice_node('Y', center_RAS);       
slice_node('G', center_RAS);       
layout_node('3');                        
slicecomposite_node(fore_id, back_id, label_id, 'R');                  
slicecomposite_node(fore_id, back_id, label_id, 'Y');          
slicecomposite_node(fore_id, back_id, label_id, 'G');
end