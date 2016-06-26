class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :all_categories
  helper_method :all_services
    
  def all_categories
    @categories = Category.all
	end
	
  def all_services
    @services = Service.all
	end
end
