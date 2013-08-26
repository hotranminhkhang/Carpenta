class StaticPagesController < ApplicationController

  before_filter :fetch_collection_menu
  
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

  # fetch collection menu
  def fetch_collection_menu
    @collections = Collection.where(:active => true)
  end

  def randomize_background
    backgrounds = BackgroundImage.where(:place => "home")
    @background = backgrounds[rand(backgrounds.size)]
  end

end
