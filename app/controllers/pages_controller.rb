class PagesController < ApplicationController
  def home
    @beaches = Beach.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@beaches) do |beach, marker|
      marker.lat beach.latitude
      marker.lng beach.longitude
      # marker.infowindow render_to_string(partial: "/pages/map_box", locals: { beach: beach })
    end
  end
end
