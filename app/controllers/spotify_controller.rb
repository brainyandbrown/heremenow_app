class SpotifyController < ApplicationController
  def index
  end

  def search
    @artist_city = params[:user_city]
    @artists = SpotifyApi.artists_by_city(@artist_city)
  end

  def search
    @artist_name = params[:artist]
    @sample = SpotifyApi.songs(@artist_name)
  end


end
