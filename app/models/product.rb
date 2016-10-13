class Product < ActiveRecord::Base
	# has_and_belongs_to_many :catagories
	has_many :category_products
	has_many :categories, through: :category_products
	accepts_nested_attributes_for :category_products

	def possible_categories
		Category.all.map {|category| category.kind}
	end

end

