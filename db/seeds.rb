# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Seed Collection table
Collection.delete_all

Collection.create(
	title: 'Tech Wood',
	description: 'Tech Wood is hi-tech',
	active: true,
	permalink: 'tech-wood'
)
Collection.create(
	title: 'Fun Wood',
	description: 'Fun Wood is Fun',
	active: true,
	permalink: 'fun-wood'
)
Collection.create(
	title: 'Art Wood',
	description: 'Art Wood is..well..O_o',
	active: true,
	permalink: 'art-wood'
)



# Seed Product table
Product.delete_all

[1,2,3].each  do |i| 
	(1..4).each do 
	Product.create(
		collection_id: i,
		title: 'Commuter Mug',
		product_code: 'T001',
		serial_no: '000000001',
		short_description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id elit non mi porta gravida at eget metus.',
		long_description: 'Curabitur blandit tempus porttitor. Vestibulum id ligula porta felis euismod semper. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Cras mattis consectetur purus sit amet fermentum.

			Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Donec ullamcorper nulla non metus auctor fringilla. Sed posuere consectetur est at lobortis.',
		price: '240000',
		active: true,
		permalink: 'ground-espresso-decaf',
		image_url_01: '144.jpeg',
		image_url_02: 'Wave_4_1000x1000_1.jpeg',
		image_url_03: 'Wave_4_1000x1000_1.jpeg'	
	)
	Product.create(
		collection_id: i,
		title: 'Pour Kettle',
		product_code: 'T002',
		serial_no: '000000002',
		short_description: 'Sed posuere consectetur est at lobortis. Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod.',
		long_description: 'Etiam porta sem malesuada magna mollis euismod. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Curabitur blandit tempus porttitor. Cras justo odio, dapibus ac facilisis in, egestas eget quam.

			Donec id elit non mi porta gravida at eget metus. Aenean lacinia bibendum nulla sed consectetur. Maecenas faucibus mollis interdum. Curabitur blandit tempus porttitor. Etiam porta sem malesuada magna mollis euismod.',
		price: '240000',
		active: true,
		permalink: 'iperespresso-capsules-medium-roast',
		image_url_01: 'jpeg-1.jpeg',
		image_url_02: 'jpeg-1.jpeg',
		image_url_03: 'jpeg-1.jpeg'	
	)

	Product.create(
		collection_id: i,
		title: 'Chemex Coffeemaker',
		product_code: 'T0003',
		serial_no: '000000003',
		short_description: 'Etiam porta sem malesuada magna mollis euismod. Curabitur blandit tempus porttitor.',
		long_description: 'Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Donec sed odio dui. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nulla vitae elit libero, a pharetra augue. Sed posuere consectetur est at lobortis.

		Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec ullamcorper nulla non metus auctor fringilla. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.',
		price: '80000',
		active: true,
		permalink: 'iperespresso-lungo-capsules-medium-roast',
		image_url_01: 'jpeg-2.jpeg',
		image_url_02: 'jpeg-2.jpeg',
		image_url_03: 'jpeg-2.jpeg'	
	)
	Product.create(
		collection_id: i,
		title: 'Coffee Dripper',
		product_code: 'T0004',
		serial_no: '000000004',
		short_description: 'Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.',
		long_description: 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean lacinia bibendum nulla sed consectetur. Nullam id dolor id nibh ultricies vehicula ut id elit.

		Cras mattis consectetur purus sit amet fermentum. Sed posuere consectetur est at lobortis. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.',
		price: '50000',
		active: true,
		permalink: 'iperespresso-capsules-monoarabica',
		image_url_01: 'jpeg-3.jpeg',
		image_url_02: 'jpeg-3.jpeg',
		image_url_03: 'jpeg-3.jpeg'	
	)
	Product.create(
		collection_id: i,
		title: 'Glass Carafe Coffee Maker',
		product_code: 'T0005',
		serial_no: '000000005',
		short_description: 'Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas sed diam eget risus varius blandit sit amet non magna.',
		long_description: 'Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam quis risus eget urna mollis ornare vel eu leo. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit.

		Nullam quis risus eget urna mollis ornare vel eu leo. Curabitur blandit tempus porttitor. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Donec id elit non mi porta gravida at eget metus.',
		price: '230000',
		active: true,
		permalink: 'ground-espresso-coffee',
		image_url_01: 'img38o.jpeg',
		image_url_02: 'img38o.jpeg',
		image_url_03: 'img38o.jpeg'	
	)
	Product.create(
		collection_id: i,
		title: 'Expresso System',
		product_code: 'T0006',
		serial_no: '000000006',
		short_description: 'Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur.',
		long_description: 'Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.

		Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Maecenas sed diam eget risus varius blandit sit amet non magna.',
		price: '450000',
		active: true,
		permalink: 'bialetti-6799',
		image_url_01: 'verismo_brewer_silver_580_0.jpeg'
	)

	Product.create(
		collection_id: i,
		title: 'Pod Coffeemaker',
		product_code: 'F0001',
		serial_no: '000000007',
		short_description: 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras justo odio, dapibus ac facilisis in, egestas eget quam..',
		long_description: 'Donec ullamcorper nulla non metus auctor fringilla. Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.

		Curabitur blandit tempus porttitor. Etiam porta sem malesuada magna mollis euismod. Etiam porta sem malesuada magna mollis euismod. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas faucibus mollis interdum. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.',
		price: '325000',
		active: true,
		permalink: 'delonghi-emk6',
		image_url_01: 'img25o.jpeg',
		image_url_02: 'img25o.jpeg',
		image_url_03: 'img25o.jpeg'	
	)

	Product.create(
		collection_id: i,
		title: 'Grand Coffee Maker',
		product_code: 'F0002',
		serial_no: '000000008',
		short_description: 'Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Donec ullamcorper nulla non metus auctor fringilla.',
		long_description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam quis risus eget urna mollis ornare vel eu leo. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.
		Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nulla vitae elit libero, a pharetra augue. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ullamcorper nulla non metus auctor fringilla.',
		price: '400000',
		active: true,
		permalink: 'espresso',
		image_url_01: 'img38o.jpeg',
		image_url_02: 'img38o.jpeg',
		image_url_03: 'img38o.jpeg',
		image_url_04: 'img38o.jpeg',
		image_url_05: 'img38o.jpeg'
	)
	Product.create(
		collection_id: i,
		title: 'Barista Espresso Maker',
		product_code: 'F0003',
		serial_no: '000000009',
		short_description: 'Maecenas sed diam eget risus varius blandit sit amet non magna. Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
		long_description: 'Donec sed odio dui. Nullam id dolor id nibh ultricies vehicula ut id elit. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Maecenas sed diam eget risus varius blandit sit amet non magna. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.
		Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Cras mattis consectetur purus sit amet fermentum. Nullam quis risus eget urna mollis ornare vel eu leo. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Curabitur blandit tempus porttitor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Maecenas sed diam eget risus varius blandit sit amet non magna..',
		price: '400000',
		active: true,
		permalink: 'francis-francis-for-illy-x71',
		image_url_01: 'img25o-1.jpeg'
	)
	end
end
	
