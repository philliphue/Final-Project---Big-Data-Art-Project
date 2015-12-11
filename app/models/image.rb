class Image < ActiveRecord::Base

  validates :user, :presence => true

  belongs_to :user

  has_many :likes, :dependent => :destroy
  has_many :fans, :through => :likes, :source => :user

  mount_uploader :image_url, ImageUploader

end
