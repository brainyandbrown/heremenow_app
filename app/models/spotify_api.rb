# require 'pry'

module SpotifyApi

  def self.artists_by_city(artist_city)
    user_city = URI.encode(artist_city)
    # takes strings and maps spaces to "%20"
    url = "http://developer.echonest.com/api/v4/artist/search?api_key=THOW2AWRJXHODNK2Y&format=json&artist_location=city:#{user_city}+country:united+states&bucket=artist_location&bucket=id:spotify"
    response = HTTParty.get(url)
    JSON.parse(response.body)['Search']
    artists_array = response['response']['artists']
  end

  def self.songs(artist_name)
    artist = artist_name
    url = "http://developer.echonest.com/api/v4/playlist/static?api_key=THOW2AWRJXHODNK2Y&format=json&results=10&artist=#{artist}&bucket=id:spotify&bucket=tracks&limit=true"
    response = HTTParty.get(url)
    JSON.parse(response.body)['Search']
    songs_array = response['response']['songs']
    sample = songs_array.sample['tracks'].sample['foreign_id']
    # binding.pry
  end

# new%20york

  # def self.songs(artist_songs)
  #   # url = ''
  #   # response = HTTParty.get(url)['Search']
  #   # songs_array = response['response']['songs'].sample

  # end

end
