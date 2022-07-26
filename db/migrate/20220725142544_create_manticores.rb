class CreateManticores < ActiveRecord::Migration[6.1]
  def change
    create_table :manticores do |t|
      t.string :name, null: false 
      t.string :age 
      t.string :ferocity, null: false, default: "feral"

      t.timestamps null: false
    end
  end
end
