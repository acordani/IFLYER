class AddPhotoToAnnounce < ActiveRecord::Migration
  def change
    add_column :announces, :photo, :string
  end
end
