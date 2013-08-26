ActiveAdmin.register BackgroundImage do
  
  # List background image
	index :as => :grid, :columns => 2 do |b|
		div :class => "gridImage" do
			link_to(image_tag(b.image.url), admin_background_image_path(b))
		end

		a truncate(b.place), :href => admin_background_image_path(b)
	end

	# Show product

	show do |b|
		h3 b.place
		panel "Image" do
			div :class => "showImage" do
			 	image_tag(b.image.url)
			end
		end

	end	


  # New 
	form :html => { :enctype => "multipart/form-data" } do |f|
   	f.inputs "Details" do
	    f.input :place
	  end
	  f.inputs "Images" do
	    f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image.url)

 		end

 		f.inputs "Actions" do
	  	f.actions
		end

 	end
end
