class ActorsController < ApplicationController
  def index
    @alld = Actor.all
    render("/movies/index.html.erb")
  end
  
  def delete_row
     @id = params[:some_id]
     @todelete = Actor.find(@id)
     @todelete.destroy
     
     redirect_to("/actors")
  end 
  def new_form
     render("/actors/new_form.html.erb")
  end 
  def create_form
    @new = Actor.new
    @new.name = params["actor_name"]
    @new.bio = params["actor_bio"]
    @new.dob = params["actor_dob"]
    @new.image_url = params["actor_url"]
    @new.save
    
    redirect_to("/actors")
  end 
  def edit_form
     @id = params[:number]
     @d = Actor.find(@id)
     @name = @d.name
     @bio = @d.bio
     @dob = @d.dob
     @image = @d.image_url
     
     render("/actors/edit_form.html.erb")
  end
  
  def update_form
    @id = params[:an_id]
    @direct = Actor.find(@id)
    @direct.name = params["actor_name"]
    @direct.dob = params["actor_dob"]
    @direct.bio = params["actor_bio"]
    @direct.image_url = params["actor_url"]
    @direct.save
    
    redirect_to("/actors/"+@id)
  end
  
  def read_row
    @id = params[:the_id]
    @d = Actor.find(@id)
    @name = @d.name
    @bio = @d.bio
    @dob = @d.dob
    @image = @d.image_url
    
    render("read_row")
  end
end
