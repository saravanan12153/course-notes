class GroupingsController < ApplicationController

  def create
    @grouping = Grouping.create!(grouping_params)
    render :json => {:message_group => @grouping.message_group}
  end

  private

  def grouping_params
    params.permit(:message_id, :message_group_id)
  end

end
