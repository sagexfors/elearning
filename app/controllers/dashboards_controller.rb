# frozen_string_literal: true

class DashboardsController < ApplicationController
  before_action :authenticate_user!
  layout 'dashboards'

  def home; end
end
