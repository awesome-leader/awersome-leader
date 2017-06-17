class Image < ApplicationRecord
  mount_uploader :file, ModelUploader
  attr_accessible :file
end
