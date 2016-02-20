class RemoveTypeToAnnounce < ActiveRecord::Migration
  def change
    remove_column :announces, :type, :string
  end
end
