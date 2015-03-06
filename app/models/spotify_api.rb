# require 'pry'

module SpotifyApi

  def self.artists(artist)

    url = "http://developer.echonest.com/api/v4/song/search?api_key=THOW2AWRJXHODNK2Y&format=json&artist=#{artist}&bucket=id:spotify"
    response = HTTParty.get(url)
    JSON.parse(response.body)
  end

  def self.artists_by_city(artist_city)
    user_city = URI.encode(artist_city)
    # takes strings and maps spaces to "%20"
    url = "http://developer.echonest.com/api/v4/artist/search?api_key=THOW2AWRJXHODNK2Y&format=json&artist_location=city:#{user_city}+country:united+states&bucket=artist_location&bucket=id:spotify"
    response = HTTParty.get(url)
    JSON.parse(response.body)
    artists_array = response['response']['artists']
    # ['response']['artists'][0]['name']
      # i = 0
      # artists = artists_array.length

      # while i < artists do
      #   puts("artists_array[#{i}]['name']")
      #   i += 1
      # end
  end

# new%20york

  def self.songs(artist_songs)

  end

end
