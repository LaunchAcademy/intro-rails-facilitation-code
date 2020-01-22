class AddDescriptionColumnToCentaurs < ActiveRecord::Migration[5.2]
  def change
    add_column(:centaurs, :description, :text)
  end
end
