class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
   	  t.string :kind
   	  t.references :parent_category, index: true
      t.timestamps null: false
    end
  end
end
