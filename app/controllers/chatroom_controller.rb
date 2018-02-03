class ChatroomController < ApplicationController
  before_action :require_user

  def index
    @messages = Message.load_messages
  end
end
