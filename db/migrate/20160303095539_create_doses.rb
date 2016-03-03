class CreateDoses < ActiveRecord::Migration
  def change
    create_table :doses do |t|
    t.integer :ingredient_id
    t.integer :cocktail_id
    t.string :description
      
    t.timestamps null: false
    end
  end
end
