class StaticPagesController < ApplicationController

  layout :resolve_layout

  def home
  end


  def template
  end
  
  def shop
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
end
