class BackgroundImage < ActiveRecord::Base
  # attr_accessible :title, :body
  PLACE = ["home", "shop"]

  attr_accessible :place, :image
  has_attached_file :image
  validates :place, inclusion: PLACE
end
