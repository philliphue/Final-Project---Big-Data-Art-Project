class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, :presence => true, :uniqueness => true

  has_many :images, :dependent => :destroy
  has_many :projects, :dependent => :destroy
  has_many :likes, :dependent => :destroy
  has_many :liked_images, :through => :likes, :source => :image
  has_many :project_images
  mount_uploader :avatar, AvatarUploader


end
