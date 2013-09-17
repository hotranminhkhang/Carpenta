# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Carpenta::Application.initialize!


Carpenta::Application.configure do
	config.action_mailer.default_url_options = { :host => 'carpenta.herokuapp.com' }
	config.action_mailer.delivery_method = :smtp
	config.action_mailer.perform_deliveries = true
	config.action_mailer.raise_delivery_errors = false
	config.action_mailer.default :charset => "utf-8"
	config.action_mailer.smtp_settings = {
	  address: "smtp.gmail.com",
	  port: 587,
	  domain: "carpenta.herokuapp.com",
	  authentication: "plain",
	  enable_starttls_auto: true,
	  user_name: ENV["GMAIL_USERNAME"],
	  password: ENV["GMAIL_PASSWORD"]
	}
end