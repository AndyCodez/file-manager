class UserFile < ApplicationRecord
  mount_uploader :file, FileUploader
  scope :roots, -> { where(folder_id: nil) }
end
