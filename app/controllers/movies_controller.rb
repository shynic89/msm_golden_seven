class MoviesController < ApplicationController
  def index
    @alld = Director.all
    render("/movies/index.html.erb")
  end
  
  def delete_row
     @id = params[:some_id]
     @todelete = Director.find(@id)
     @todelete.destroy
     
     redirect_to("/directors")
  end 
  def new_form
     render("/movies/new_form.html.erb")
  end 
  def create_form
    @new = Director.new
    @new.name = params["director_name"]
    @new.bio = params["director_bio"]
    @new.dob = params["director_dob"]
    @new.image_url = params["director_url"]
    @new.save
    
    redirect_to("/directors")
  end 
  def edit_form
     @id = params[:number]
     @d = Director.find(@id)
     @name = @d.name
     @bio = @d.bio
     @dob = @d.dob
     @image = @d.image_url
     
     render("/movies/edit_form.html.erb")
  end
  
  def update_form
    @id = params[:an_id]
    @direct = Director.find(@id)
    @direct.name = params["director_name"]
    @direct.dob = params["director_dob"]
    @direct.bio = params["director_bio"]
    @direct.image_url = params["director_url"]
    @direct.save
    
    redirect_to("/directors/"+@id)
  end
  
  def read_row
    @id = params[:the_id]
    @d = Director.find(@id)
    @name = @d.name
    @bio = @d.bio
    @dob = @d.dob
    @image = @d.image_url
    
    render("read_row")
  end
end
