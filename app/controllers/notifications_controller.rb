class NotificationsController < ApplicationController
  def notify
    ActionCable.server.broadcast 'web_notifications_channel', message: 'test'
    head :no_content
  end
end
