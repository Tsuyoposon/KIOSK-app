class Shop < ActiveRecord::Base

  mount_uploader :image, ImageUploader

  has_many :comments
  belongs_to :user
  has_many :wents, dependent: :destroy
  def went_user(user_id)
   likes.find_by(user_id: user_id)
  end
end
