class Restaurant < ActiveRecord::Base
  belongs_to :user

	validates :name, presence: true
  validates_presence_of :phone

  mount_uploader :image, ImageUploader
  mount_uploader :menu, MenuUploader
end
