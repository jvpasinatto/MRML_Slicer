function threebythree_view()
slice_node('R', center_RAS);       
slice_node('Y', center_RAS);       
slice_node('G', center_RAS);
slice_node('4', center_RAS);       
slice_node('5', center_RAS);       
slice_node('6', center_RAS);
slice_node('7', center_RAS);       
slice_node('8', center_RAS);       
slice_node('9', center_RAS); 
layout_node('33');                        
slicecomposite_node(fore_id, back_id, label_id, 'R');                  
slicecomposite_node(fore_id, back_id, label_id, 'Y');          
slicecomposite_node(fore_id, back_id, label_id, 'G');
slicecomposite_node(fore_id, back_id, label_id, '4');                  
slicecomposite_node(fore_id, back_id, label_id, '5');          
slicecomposite_node(fore_id, back_id, label_id, '6');
slicecomposite_node(fore_id, back_id, label_id, '7');                  
slicecomposite_node(fore_id, back_id, label_id, '8');          
slicecomposite_node(fore_id, back_id, label_id, '9');
end