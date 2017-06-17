class Image < ApplicationRecord
  mount_uploader :file, ImageUploader
  attr_accessible :file
end
