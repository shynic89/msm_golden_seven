class ApplicationController < ActionController::Base
  # def index
  #   @alld = Actor.all
  #   @alld = Director.all
  #   render("/movies/index.html.erb")
  # end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
