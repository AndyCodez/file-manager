class UserFile < ApplicationRecord
  mount_uploader :file, FileUploader
end
