class Reservation < ActiveRecord::Base
  belongs_to :restaurant

  validate :email, presence: true
  validate :time, presence: true
  validate :restaurant_id, presence: true
end