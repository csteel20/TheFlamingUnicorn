class Developer < ActiveRecord::Base
  has_many :developer_notifications
  has_many :notifications, :through => :developer_notifications
end
