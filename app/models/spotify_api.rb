# require 'pry'

module SpotifyApi

  def self.artists_by_city(artist_city)
    user_city = URI.encode(artist_city)
    # takes strings and maps spaces to "%20"
    url = "http://developer.echonest.com/api/v4/artist/search?api_key=THOW2AWRJXHODNK2Y&format=json&artist_location=city:#{user_city}&bucket=artist_location&bucket=id:spotify"
    response = HTTParty.get(url)
    JSON.parse(response.body)['Search']
    artists_array = response['response']['artists']
    puts artists_array
    artists_array
  end

  def self.songs(artist_name)
    artist = URI.encode(artist_name['name'])
    url = "http://developer.echonest.com/api/v4/playlist/static?api_key=THOW2AWRJXHODNK2Y&format=json&results=10&artist=#{artist}&bucket=id:spotify&bucket=tracks&limit=true"
    response = HTTParty.get(url)
    JSON.parse(response.body)['Search']
    songs_array = response['response']['songs']
    sample = songs_array.sample['tracks'].sample['foreign_id']
    puts sample
    sample

  end

  def self.titles(song_title)
    title = URI.encode(song_title['title'])
    url = "http://developer.echonest.com/api/v4/song/search?api_key=THOW2AWRJXHODNK2Y&format=json&results=1&artist=#{artist}&title=#{title}&bucket=id:spotify&bucket=tracks&limit=true"
    response = HTTParty.get(url)['Search']
    titles_array = response['response']['title']
    sample_title = titles_array.sample['title']
    puts sample_title
    sample_title


  end

end
