class CreateElves < ActiveRecord::Migration[5.2]
  def change
    create_table :elves do |t|
      t.string :name, null: false
      t.string :elf_type

      t.timestamps
    end
  end
end
