class RequestController < ApplicationController
  def index
    @error = Error.new()
    @error.name = params[:name]
    @error.content = params[:content]
    @error.priority = params[:priority]
    @error.site_id = params[:site_id]
    @error.save 
    render :json => {:response => "success"}
  end
end
