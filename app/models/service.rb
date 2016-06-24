class Service < ActiveRecord::Base
belongs_to :category
acts_as_mappable :auto_geocode=>{:field=>:address_1, :field=>:address_2, :error_message=>'Could not geocode address'}
end
