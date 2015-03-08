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

    # @song_title = params[:title]
    # @songs = SpotifyApi.songs(@artist_name)
    # @titles = []
    # @songs.each do |song|
    #   @titles << { song: title['title'], title: SpotifyApi.titles(title) }
    # end
    # @titles
  end


end
