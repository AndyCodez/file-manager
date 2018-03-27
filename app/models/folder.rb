class Folder < ApplicationRecord
  validates :name, presence: true
  has_ancestry
  has_many :user_files, dependent: :destroy
end
