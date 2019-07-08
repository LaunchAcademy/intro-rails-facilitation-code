class CreateWizards < ActiveRecord::Migration[5.2]
  def change
    create_table :wizards do |t|
      t.string :name
      t.string :title
      t.integer :age

      t.timestamps
    end
  end
end
