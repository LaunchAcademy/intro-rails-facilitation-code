class CreateSpells < ActiveRecord::Migration[6.1]
  def change
    create_table :spells do |t|
      t.string :name, null: false
      t.string :spell_type
      t.belongs_to :wizard

      t.timestamps
    end
  end
end
