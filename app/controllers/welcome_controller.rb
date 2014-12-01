class WelcomeController < ApplicationController
before_action :authenticate_user! , except:[:index]

layout "first_page"
  def index
  end
  def home
  	
  end
end
