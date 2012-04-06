class Error < ActiveRecord::Base
  
  belongs_to :site

  #set validation
  validates :site_id, :presence => { :message => "Site is required." }
  validates :name, :presence => { :message => "Name is required." }
  validates :content, :presence => { :message => "Content is required." }

  #Call default_values before save..
  before_save :default_values
  after_save :make_request
  
  #sets default values if not set by user
  def default_values
    self.priority ||= 0
  end
  
  #send notification to each user, for each site, for each notification they subscribe to
  def make_request
    @request = self
    @request.site.developers.each do |d|
      d.notifications.each do |n|
        n.make_new_call @request
      end
    end
  end

end