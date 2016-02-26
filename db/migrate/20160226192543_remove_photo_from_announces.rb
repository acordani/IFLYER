class RemovePhotoFromAnnounces < ActiveRecord::Migration
  def change
    remove_column :announces, :photo, :string
  end
end
