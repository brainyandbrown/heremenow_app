class Location < ActiveRecord::Base
  belongs_to :user
  belongs_to_and_has_many :artist
end
