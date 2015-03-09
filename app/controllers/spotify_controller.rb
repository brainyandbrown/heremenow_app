class SpotifyController < ApplicationController
  def index
  end

  def search
    @artist_city = params[:user_city]
    @artists = SpotifyApi.artists_by_city(@artist_city)
    @songs = []
    @artists.each do |artist|
      @songs << { artist: artist['name'], song: SpotifyApi.songs(artist) }
    end
    @songs
  end

end
