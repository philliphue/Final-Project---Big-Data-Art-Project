class Like < ActiveRecord::Base

  validates :user, :presence => true, :uniqueness => {:scope => :image }
  validates :image, :presence => true

  belongs_to :user
  belongs_to :image

end
