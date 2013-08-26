class BackgroundImage < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :place, :image
  has_attached_file :image
end
