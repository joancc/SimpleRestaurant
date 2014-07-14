class User < ActiveRecord::Base
  has_secure_password
  has_many :restaurants

  validates_uniqueness_of :email 
  validates_presence_of :email
  validates_presence_of :password_confirmation
end
