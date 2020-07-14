class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :body, null: false
      t.belongs_to :balloon_animal

    end
  end
end
