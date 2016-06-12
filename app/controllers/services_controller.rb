class ServicesController < ApplicationController

	def index
		@services = Service.all
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
		@service = Service.find(params[:id])

	end
	
	def destroy

	end
end


