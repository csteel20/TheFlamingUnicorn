class Site < ActiveRecord::Base
  has_many :developer_sites
  has_many :developers, :through => :developer_sites
end
