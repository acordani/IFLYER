class CreateAnnounces < ActiveRecord::Migration
  def change
    create_table :announces do |t|
      t.integer :price
      t.text :description
      t.string :type
      t.integer :bed
      t.integer :bath
      t.integer :surface
      t.integer :title

      t.timestamps null: false
    end
  end
end
