class Project < ActiveRecord::Base

  validates :user, :presence => true

  belongs_to :user

  has_many :comments, :dependent => :destroy
  has_many :likes, :dependent => :destroy
  has_many :fans, :through => :likes, :source => :user
  has_many :images, :dependent => :destroy
  has_many :project_images, :dependent => :destroy


end
