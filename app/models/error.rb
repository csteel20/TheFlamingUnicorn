class Error < ActiveRecord::Base
  
  belongs_to :site
  
  require 'rest-client'

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
  
  #example test for myself
  def make_request
    @notification = Notification.new
    @notification.make_new_call self
  end

end
