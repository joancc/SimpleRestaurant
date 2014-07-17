class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  # Devise uses encrypted_password, which conflicts with password_digest from has_secure_password
  # has_secure_password
  has_many :restaurants

  validates :password, presence: true, length: { minimum: 8 }
  validates_uniqueness_of :email 
  validates_presence_of :name, :email
  validates_confirmation_of :password
  validates :password_confirmation, presence: true, :on => :create
end
