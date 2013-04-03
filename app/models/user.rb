class User < ActiveRecord::Base
  # Remember to create a migration!
  validates :email, :presence => true, :uniqueness => true
  validates :password, :presence => true

  def self.authenticate(email, password)
    user = User.find_by_email_and_password(email, password)
  end
end
