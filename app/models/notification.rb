class Notification < ActiveRecord::Base
  
  belongs_to :developer
  
  def make_new_call(error_params)
      RestClient.post self.push_url, 
        :apikey => self.api_key, 
        :application => "An Error Has Occured", 
        :event => error_params.name, 
        :priority => error_params.priority, 
        :description => error_params.content
  end
  
end
