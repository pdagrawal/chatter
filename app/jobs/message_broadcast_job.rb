class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(chat)
    ActionCable.server.broadcast 'room_channel', content: chat
  end
end
