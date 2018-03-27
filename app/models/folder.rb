class Folder < ApplicationRecord
  validates :name, presence: true
  has_ancestry
end
