class MoviesController < ApplicationController
  def index
    @alld = Director.all
    render("/movies/index.html.erb")
  end
  def read_row
     render("/movies/read_row.html.erb")
  end
  def delete_row
     render("/movies/delete_row.html.erb")
  end 
  def new_form
     render("/movies/new_form.html.erb")
  end 
  def edit_form
     render("/movies/edit_form.html.erb")
  end
end
