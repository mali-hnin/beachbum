class PagesController < ApplicationController
  def index
    @beaches = Beach.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@beaches) do |beach, marker|
      marker.lat .latitude
      marker.lng flat.longitude
    end
  end

  def home
  end
end
