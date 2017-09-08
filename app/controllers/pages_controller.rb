class PagesController < ApplicationController
  def home
    @beaches = Beach.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@beaches) do |beach, marker|
      marker.lat beach.latitude
      marker.lng beach.longitude
    end
    p @hash
  end

  def search
    @location = params[:address]
    @beaches = Beach.near("#{@location}, Portugal", 40, units: :km)

    @hash = Gmaps4rails.build_markers(@beaches) do |beach, marker|
      marker.lat beach.latitude
      marker.lng beach.longitude
    end

    respond_to do |format|
      format.js
    end
  end
end
