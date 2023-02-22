# frozen_string_literal: true

class NotificationsController < ApplicationController
  layout 'dashboards'

  before_action :authenticate_user!

  def index
    @notifications = Notification.where(recipient: current_user)
  end
end
