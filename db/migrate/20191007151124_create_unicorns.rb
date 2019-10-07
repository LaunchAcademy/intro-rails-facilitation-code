class CreateUnicorns < ActiveRecord::Migration[5.2]
  def change
    create_table :unicorns do |t|
      t.string :name, null: false
    end
  end
end
