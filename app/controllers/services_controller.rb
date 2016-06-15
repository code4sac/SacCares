class ServicesController < ApplicationController

	def index
		@services = Service.all
	end

	def new
		@service = Service.new
		@categories = Category.all
	end
	
	def create
		@service = Service.new(service_params)
		
		if @service.save
			redirect_to :notice => "Your listing has been saved"
		else 
			@categories = Category.all
			render :notice => "new"
	end
	end
	
	def service_params
		params.require(:services).permit(:agency_name, :address_1, :address_2, :tel, :fax, :email, :website, :category_id, :author_id)
	end
	
	def edit
		@service = Service.find(params[:id])
		@categories = Category.all
	end
	
	def update
		@service = Service.find(params[:id])
		
		if @service.update_attributes(service_param)
			redirect_to :notice => "Your Listing has been updated", :id => @service
		else
			@categories = Category.all
			render :notice => "edit"
	end
	end
	
	def show
		@service = Service.find(params[:id])

	end
	
	def destroy
		Service.find(params[:id]).destroy
		redirect_to :notice => 'index'
	end
end