class DeveloperSite < ActiveRecord::Base
  belongs_to :site
  belongs_to :developer
end
