class Category < ActiveRecord::Base
	# has_and_belongs_to_many :products
	has_many :category_products
	has_many :products, through: :category_products

	belongs_to :parent_category, class_name: "Category"
	has_many :sub_categories, class_name: "Category", foreign_key: :parent_category_id
end
