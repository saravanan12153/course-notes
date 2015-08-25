class MessagesController < ApplicationController
  before_action :doorkeeper_authorize!
  
  def index
    render :json => current_user.to_json
  end

end
