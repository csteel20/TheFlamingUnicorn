class Site < ActiveRecord::Base
  #Always Include The JoinTable ! 
  has_many :developer_sites
  has_many :developers, :through => :developer_sites
end
