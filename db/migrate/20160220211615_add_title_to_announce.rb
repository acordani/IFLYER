class AddTitleToAnnounce < ActiveRecord::Migration
  def change
    add_column :announces, :title, :string
  end
end
