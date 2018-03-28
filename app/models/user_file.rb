class UserFile < ApplicationRecord
  mount_uploader :file, FileUploader
  validates :file, presence: true
  # UserFiles with nil folder_id are root files
  scope :roots, -> { where(folder_id: nil) }

end
