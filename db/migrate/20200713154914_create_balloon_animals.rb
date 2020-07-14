class CreateBalloonAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :balloon_animals do |t|
      t.string :animal, null: false 
      t.string :color 

      t.timestamps null: false
    end
  end
end
