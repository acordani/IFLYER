class RemoveTitleToAnnounce < ActiveRecord::Migration
  def change
    remove_column :announces, :title, :integer
  end
end
