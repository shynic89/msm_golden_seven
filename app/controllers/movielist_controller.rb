class MovielistController < ApplicationController
  def index
    @alld = Movie.all
    render("/movielist/index.html.erb")
  end
  
  def delete_row
     @id = params[:some_id]
     @todelete = Movie.find(@id)
     @todelete.destroy
     
     redirect_to("/movies")
  end 
  def new_form
     render("/movielist/new_form.html.erb")
  end 
  def create_form
    @new = Movie.new
    @new.title = params["movie_title"]
    @new.description = params["movie_description"]
    @new.year = params["movie_year"]
    @new.duration = params["movie_duration"]
    @new.image_url = params["movie_url"]
    @new.save
    
    redirect_to("/movies")
  end 
  def edit_form
     @id = params[:number]
     @d = Movie.find(@id)
     @title = @d.title
     @description = @d.description
     @year = @d.year
     @duration = @d.duration
     @image = @d.image_url
     
     render("/movielist/edit_form.html.erb")
  end
  
  def update_form
    @id = params[:an_id]
    @direct = Movie.find(@id)
    @direct.title = params["movie_title"]
    @direct.year= params["movie_year"]
    @direct.description = params["movie_description"]
    @direct.duration= params["movie_duration"]
    @direct.image_url = params["movie_url"]
    @direct.save
    
    redirect_to("/movies/"+@id)
  end
  
  def read_row
    @id = params[:the_id]
    @d = Movie.find(@id)
    @title = @d.title
    @description = @d.description
    @year = @d.year
    @duration = @d.duration
    @image = @d.image_url
    
    render("read_row")
  end
end
