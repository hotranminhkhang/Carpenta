# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Carpenta::Application.initialize!


# Carpenta::Application.configure do
# 	config.action_mailer.delivery_method = :smtp
# 	config.action_mailer.perform_deliveries = true  
# 	config.action_mailer.smtp_settings = {
# 		address: 								"smtp.gmail.com",
# 		port: 									587, 	
# 		authentication: 				:login,
# 		user_name: 							"hotranminhkhang@gmail.com",
# 		password: 							"Neverb@ckd0wn1",
# 		enable_starttls_auto: 	true
# 	}
# end

ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => ENV['SENDGRID_USERNAME'],
  :password       => ENV['SENDGRID_PASSWORD'],
  :domain         => 'heroku.com',
  :enable_starttls_auto => true
}