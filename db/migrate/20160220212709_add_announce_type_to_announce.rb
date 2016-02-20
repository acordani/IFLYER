class AddAnnounceTypeToAnnounce < ActiveRecord::Migration
  def change
    add_column :announces, :announce_type, :string
  end
end
