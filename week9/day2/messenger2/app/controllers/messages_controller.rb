class MessagesController < ApplicationController

  def index
    @messages = Message.all
    render :json => @messages.to_json
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      render :json => @message.to_json
    else
      render :json => @message.errors.to_json
    end
  end

  def show
    @message = Message.find(params[:id])
    render :json => @message.to_json
  end



  private

  def message_params
    params.require(:message).permit(:title, :body)
  end

end
