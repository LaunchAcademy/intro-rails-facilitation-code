class CreateSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :spells do |t|
      t.string :name 
      t.belongs_to :wizard
    end
  end
end
