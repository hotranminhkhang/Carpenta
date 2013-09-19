class StaticPagesController < ApplicationController

  # before_filter :fetch_collection_menu
  # before_filter :randomize_background

  layout :resolve_layout

  def home
  end

  def shop
  end

  def about  
  end

  def contact
  end

  def dispatch_email
    user_info = params[:user_info]
    if validate_user_info(user_info) == false
      flash[:alert] = "Errors in your message input"
      redirect_to contact_url
    else
      if ContactMailer.send_email(user_info).deliver
        flash[:notice] = "Your message is sent!"   
        redirect_to root_url
      else
        flash[:alert] = "Could't send your message."
        redirect_to contact_url
      end
    end
  end


  def template
  end
  








  private

  def resolve_layout
  	case action_name
  	when "home"
  		"home"
  	else
  		"application"
  	end
  end

  def validate_user_info(user_info)
    regex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
    valid = true

    name = user_info["name"]
    email = user_info["email"]
    subject = user_info["subject"]
    message = user_info["message"]

    if name == nil
      valid = false
    elsif email[regex] == nil
      valid = false
    elsif subject == nil
      valid = false
    elsif message == nil
      valid = false
    end  

    return valid
  end

end
