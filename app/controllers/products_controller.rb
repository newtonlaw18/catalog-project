class ProductsController < ApplicationController
	before_action :get_product, only: [:show, :edit, :update, :destroy]
	def index
		@products = Product.all
	end

	def new
		@product = Product.new
		@category_product = CategoryProduct.new
		
	end

	def create
		binding.pry
		@product = Product.new(product_params)
		@product.save
		# @category_product = CategoryProduct.new
		# @category_product.product_id = @product.id
		# @category_product.category_id = params[:category_id]
		@category_product = CategoryProduct.create(:product_id => @product.id, :category_id => params[:category_ids])
		redirect_to root_path
	end

	def show
	end

	def edit
	end

	def update
	end

	def destroy
		@product.destroy
		redirect_to @product
	end

	private
	def get_product
		@product = Product.find(params[:id])
	end

	def product_params
		params.require(:product).permit(:name, :description, :price, category_products_attributes: [ :product_id,category_ids:[]])
	end
end
