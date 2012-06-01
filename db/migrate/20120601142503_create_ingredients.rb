class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :unit
      t.string :measure
      t.string :description
      t.references :recipe

      t.timestamps
    end
    add_index :ingredients, :recipe_id
  end
end
