class WelcomeController < ApplicationController

  def index
    @services = Service.all
    @hash = Gmaps4rails.build_markers(@services) do |service, marker|
      marker.lat service.latitude
      marker.lng service.longitude
      marker.infowindow service.program_name + " " + service.street_address
    end
  end
end
