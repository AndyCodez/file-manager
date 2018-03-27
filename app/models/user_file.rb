class UserFile < ApplicationRecord
  mount_uploader :file, FileUploader
  validates :file, presence: true
  scope :roots, -> { where(folder_id: nil) }
end
