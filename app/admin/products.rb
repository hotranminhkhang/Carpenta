ActiveAdmin.register Product do
	# List products
	index :as => :grid, :columns => 4 do |p|
		div :class => "gridImage" do
			link_to(image_tag(p.image_01), admin_product_path(p))
		end

		a truncate(p.title), :href => admin_product_path(p)
	end

	# Show product

	show do |p|
		h3 p.title
		panel "Image" do
			div :class => "showImage" do
			 	image_tag(p.image_01.url)
			end
			div :class => "showImage" do
			 	image_tag(p.image_02.url)
			end
			div :class => "showImage" do
			 	image_tag(p.image_03.url)
			end
			div :class => "showImage" do
			 	image_tag(p.image_04.url)
			end
			div :class => "showImage" do
			 	image_tag(p.image_05.url)
			end
		end
		attributes_table do
			row :title
			row :collection
			row :product_code
			row :serial_no
			row :short_description
			row :long_description
			row :price
			row :status
			row :permalink
		end
		image_tag(p.image_01.url)
	end	



	# New product
	form :html => { :enctype => "multipart/form-data" } do |f|
   	f.inputs "Details" do
	    f.input :title
	    f.input :collection
	    f.input :product_code
	    f.input :serial_no
	    f.input :short_description
	    f.input :long_description
	    f.input :price
	    f.input :status
	    f.input :permalink
	    f.input :active
	  end
	  f.inputs "Images" do
	    f.input :image_01, :as => :file, :hint => f.template.image_tag(f.object.image_01.url)
	    f.input :image_02, :as => :file, :hint => f.template.image_tag(f.object.image_02.url)
	    f.input :image_03, :as => :file, :hint => f.template.image_tag(f.object.image_03.url)
	    f.input :image_04, :as => :file, :hint => f.template.image_tag(f.object.image_04.url)
	    f.input :image_05, :as => :file, :hint => f.template.image_tag(f.object.image_05.url) 
 		end

 		f.inputs "Actions" do
	  	f.actions
		end

 	end


 # 	controller do

	# 	def permitted_params
 #      params.permit(:product => [:title, :collection_id, :product_code, :serial_no, :short_description, :long_description, :price, :status, :permalink, :image_01, :image_02, :image_03, :image_04, :image_05])
 #    end		
	# end
end
