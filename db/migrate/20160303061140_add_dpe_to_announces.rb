class AddDpeToAnnounces < ActiveRecord::Migration
  def change
    add_column :announces, :class_energy, :string
    add_column :announces, :ges, :string
  end
end
