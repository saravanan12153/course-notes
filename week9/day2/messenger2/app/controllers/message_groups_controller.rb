class MessageGroupsController < ApplicationController

  def create
    @message_group = MessageGroup.new(group_params)
    if @message_group.save
      render :json => @message_group.to_json
    else
      render :json => @message_group.errors.to_json
    end
  end


  private

  def group_params
    params.permit(:title)
  end


end
