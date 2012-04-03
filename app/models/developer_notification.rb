class DeveloperNotification < ActiveRecord::Base
  belongs_to :notification
  belongs_to :developer
  
end
