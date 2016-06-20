class CategoriesController < ApplicationController

	def index
		@categories = Category.all
	end

	def new

	end
	
	def create

	end
	
	def edit

	end
	
	def update

	end
	
	def show
		@category = Category.find(params[:id])
		@agency_name = @category.name
		@services = @category.services

	end
	
	def destroy

	end
end

