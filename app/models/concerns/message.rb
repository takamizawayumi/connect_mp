class Message < ApplicationRecord
  belongs_to :tag
  belongs_to :user

  validates :content, presence: true, unless: :image?

  mount_uploader :image, ImageUploader  
  
end
