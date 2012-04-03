ActiveAdmin.register Site do
 
   form do |f|
    f.inputs "Site" do
      f.input :name
      f.input :developers
    end
    f.buttons
  end
 
 
end
