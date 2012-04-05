ActiveAdmin.register Site do
 
   form do |f|
    f.inputs "Sites" do
      f.input :name
      f.input :developers, :as => :check_boxes, :collection => Developer.all
    end
    f.buttons
  end
 
 
end
