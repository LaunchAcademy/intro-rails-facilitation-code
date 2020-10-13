class CreateCentaurs < ActiveRecord::Migration[5.2]
  def change
    create_table :centaurs do |t|
      t.string :name, null: false 
      t.string :favorite_tree_nut 
      t.boolean :ride_sharing, null: false, default: false

      t.timestamps null: false
    end
  end
end
