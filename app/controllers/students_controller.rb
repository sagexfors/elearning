class StudentsController < ApplicationController
  before_action :authenticate_user!
  layout 'dashboards'
  def index
  end
end
