class CreateCategoryProducts < ActiveRecord::Migration
  def change
    create_table :category_products do |t|
      t.references :category
      t.references :product
      t.timestamps null: false
    end
  end
end
