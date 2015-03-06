class LocationsController < ApplicationController
  def index
    @artist_city = SpotifyApi.artists_by_city('miami')
  end
end
