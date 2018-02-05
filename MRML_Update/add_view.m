function add_view_up(currentview)
%currentview:
%Conventional = 2
%Four-Up = 3
%3x3 = 33

if currentview == '2'
    conventional_view()
elseif currentview == '3'
    fourup_view()
elseif currentview == '33'
    threebythree_view()
end

end