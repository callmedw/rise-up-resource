class ServicesController < ApplicationController
  before_action :admin_authorize, only: [:new, :create, :edit, :update, :destroy]

  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
  end

  def index
    @services = Service.all
  end
end
