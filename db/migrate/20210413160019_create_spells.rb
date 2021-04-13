class CreateSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :spells do |t|
      t.string :name, null: false 

      t.belongs_to :wizard, null: false
    end
  end
end
