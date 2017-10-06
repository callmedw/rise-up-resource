class ClothingsController < ApplicationController
  before_action :admin_authorize, only: [:new, :create, :edit, :update, :destroy]
  
    def current_user
      if session[:user_id]
        @current_user = User.find(session[:user_id])
      end
    end
  
    def index
      @clothings = Clothing.where(nil)
      @clothings = @clothings.all if request.original_fullpath == "/clothings.all"
      @clothings = @clothings.any if request.original_fullpath == "/clothings.any"
      @clothings = @clothings.boys if request.original_fullpath == "/clothings.boys"
      @clothings = @clothings.girls if request.original_fullpath == "/clothings.girls"
      @clothings = @clothings.men if request.original_fullpath == "/clothings.men"
      @clothings = @clothings.women if request.original_fullpath == "/clothings.women"
      @clothings = @clothings.newborn if request.original_fullpath == "/clothings.newborn"
      
      @how_many_clothings = @clothings.length

      @hash = Gmaps4rails.build_markers(@clothings) do |clothing, marker|
        marker.lat clothing.latitude
        marker.lng clothing.longitude

      end
    end
end