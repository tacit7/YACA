class MessagesController < ApplicationController
  before_action :require_user
  def create
    @message = current_user.messages.build(message_params)

    if @message.save
      ActionCable.server.broadcast 'chat-app', payload: message_payload
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end

  def message_payload
    render(partial: 'chatroom/message', locals: {message: @message} )
  end
end
