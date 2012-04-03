ActiveAdmin.register Error do
  
  index do
    column "Error Id", :id
    column :name
    column :priority
    column "Site", :site
    column "Error Log Time", :created_at
    default_actions
  end
  
  form do |f|
    f.inputs "Error" do
      f.input :name
      f.input :content
      f.input :priority
      f.input :site
    end
    f.buttons
  end
end