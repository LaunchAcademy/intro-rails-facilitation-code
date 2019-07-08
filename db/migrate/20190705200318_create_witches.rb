class CreateWitches < ActiveRecord::Migration[5.2]
  def change
    create_table :witches do |t|
      t.string :name
      t.string :superpower

      t.timestamps
    end
  end
end
