ActiveAdmin.register Error do
  index do
    column "Error Id", :id
    column :name
    column :priority
    column "Site Id", :site_id
    column "Error Log Time", :created_at
    default_actions
  end
  
  form do |f|
    f.inputs "Error" do
      f.input :name
      f.input :content
      f.input :priority
      f.input :site_id, :as => :select, :collection => Site.all
    end
    f.buttons
  end
end