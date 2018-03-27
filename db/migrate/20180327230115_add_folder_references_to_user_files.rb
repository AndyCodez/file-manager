class AddFolderReferencesToUserFiles < ActiveRecord::Migration[5.1]
  def change
    add_reference :user_files, :folder, foreign_key: true
  end
end
