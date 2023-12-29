
class ChatRoomsController < ApplicationController
  def index
    @chat_room = ChatRoom.new
    @chat_rooms = ChatRoom.all
  end

  def create
    @chat_room = ChatRoom.new(chat_room_params)

    if @chat_room.save
      redirect_to @chat_room
    else
      render :index
    end
  end

  def show
    @chat_room = ChatRoom.find(params[:id])
  end

  private

  def chat_room_params
    params.require(:chat_room).permit(:title)
  end
end

