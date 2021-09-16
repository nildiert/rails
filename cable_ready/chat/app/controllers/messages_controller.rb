class MessagesController < ApplicationController
  def index
    @message = Message.new
    @messages = Message.order('created_at DESC')
  end

  def create 
    message = Message.create!(message_params)

    message.broadcast

    redirect_to :messages

  end


  private

  def message_params
    params.require(:message).permit(:username, :body)
  end
end