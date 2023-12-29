
class MessagesController < ApplicationController
  def create
    @chat_room = ChatRoom.find(params[:chat_room_id])
    @message = @chat_room.messages.create(message_params)
    redirect_to chat_room_path(@chat_room)
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end

