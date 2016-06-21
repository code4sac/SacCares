ActiveAdmin.register_page "Dashboard" do
menu :priority => 1
  content :title => proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Recent Agency Listings" do
          table_for Service.order("created_at desc").limit(5) do
            column :agency_name do |service|
              link_to service.agency_name, [:admin, service]
            end
            column :created_at
          end
          strong { link_to "View all Agency Listings", admin_services_path }
		strong { link_to "View all Category Listings", admin_categories_path }
		 end
      end
    end
  end
end

      #column do
        #panel "Recent Category Listings" do
          #table_for Category.order("created_at desc").limit(5) do
            #column :name do |category|
              #link_to category.name, [:admin, category]
            #end
            #column :created_at
          #end
          #strong { link_to "View all Category Listings", admin_categories_path }		  
		 #end
      #end
    #end
  