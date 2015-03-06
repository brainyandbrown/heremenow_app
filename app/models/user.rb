class User < ActiveRecord::Base
  has_secure_password

  has_one :location

  validates_uniqueness_of :email

  def self.find_by_username(username)
    all.select { |user| user.username == username }.first
  end

  def username
    email.downcase
  end

end
