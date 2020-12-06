class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :dish_id
      t.string :quantity

      t.timestamps
    end
  end
end
