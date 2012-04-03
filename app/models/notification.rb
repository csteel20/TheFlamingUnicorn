class Notification < ActiveRecord::Base
  
  def make_new_call(error_params)
      RestClient.post 'https://www.notifymyandroid.com/publicapi/notify', 
        :apikey => "576d683ab3c4de757b66e37263346dc3e9070c21713009c0", 
        :application => "An Error Has Occured", 
        :event => error_params.name, 
        :priority => error_params.priority, 
        :description => error_params.content
  end
  
end
