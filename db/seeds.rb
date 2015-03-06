User.destroy_all
Location.destroy_all
Artist.destroy_all
Song.destroy_all

users = User.create([])
locations = Location.create([
  {city: 'new york'},
  {city: 'los angeles'},
  {city: 'miami'},
  {city: 'seattle'}
])

# artists = DissemblyApiHelper.artists
# artists.each do |artist_data|
#   Artist.create(
#     id: artist_data[:id],
#     name: artist_data[:name],
#     location: Location.find_by(:location)
#   )
# end

# songs = DissemblyApiHelper.songs
# songs.each { |song_data| Song.create }
