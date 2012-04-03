class Developer < ActiveRecord::Base
  #might be an issue
  has_many :notifications
end
