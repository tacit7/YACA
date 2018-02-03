class ChatroomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "chat-app"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
