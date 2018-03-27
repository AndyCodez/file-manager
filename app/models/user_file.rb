class UserFile < ApplicationRecord
  belongs_to :folder
  mount_uploader :file, FileUploader
end
