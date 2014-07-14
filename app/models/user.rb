class User < ActiveRecord::Base
  has_secure_password
  has_many :restaurants

  validates :password, presence: true, length: { minimum: 8 }
  validates_uniqueness_of :email 
  validates_presence_of :name, :email
  validates_confirmation_of :password
  validates :password_confirmation, presence: true, :on => :create
end
