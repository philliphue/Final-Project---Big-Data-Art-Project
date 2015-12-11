class ProjectImage < ActiveRecord::Base

  validates :user, :project, :image, :presence => true

  belongs_to :project
  belongs_to :user
  belongs_to :image

end
