class ServicesController < ApplicationController
  before_action :admin_authorize, only: [:new, :create, :edit, :update, :destroy]
  
    def current_user
      if session[:user_id]
        @current_user = User.find(session[:user_id])
      end
    end
  
    def index
      @services = Service.where(nil)
      @services = @services.all if request.original_fullpath == "/services.all"
      @services = @services.monday if request.original_fullpath == "/services.monday"
      @services = @services.tuesday if request.original_fullpath == "/services.tuesday"
      @services = @services.wednesday if request.original_fullpath == "/services.wednesday"
      @services = @services.thursday if request.original_fullpath == "/services.thursday"
      @services = @services.friday if request.original_fullpath == "/services.friday"
      @services = @services.saturday if request.original_fullpath == "/services.saturday"
      @services = @services.sunday if request.original_fullpath == "/services.sunday"

      @hash = Gmaps4rails.build_markers(@services) do |service, marker|
        marker.lat service.latitude
        marker.lng service.longitude
        marker.infowindow service.program_name + " " + service.street_address
      end
    end
end
