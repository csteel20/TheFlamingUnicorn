class Site < ActiveRecord::Base
  #Always Include The JoinTable ! 
  has_many :developer_sites
  has_many :developers, :through => :developer_sites
  before_save :do_api_check
  
  #Checks for ApiKey, Adds if Nil
  def do_api_check
    if self.api_key == nil
      self.api_key = Digest::MD5.hexdigest(self.name + "omgflamingsalt3")
    end
  end
  
end