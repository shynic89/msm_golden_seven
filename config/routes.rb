Rails.application.routes.draw do
  #Movies
  # get("/", {:controller => "movielist", :action => "index"})
  get("/movies", {:controller => "movielist", :action => "index"})
  get("/delete_movie/:some_id", {:controller => "movielist", :action =>"delete_row"})
  get("/movies/new_form", {:controller => "movielist", :action => "new_form"})
  get("/movies/create_form", {:controller => "movielist", :action => "create_form"})
  get("/movies/:number/edit_form", {:controller => "movielist", :action => "edit_form"})
  get("/update_movie/:an_id", {:controller =>"movielist", :action=> "update_form"})
  get("/movies/:the_id", {:controller =>"movielist", :action => "read_row"})
  
  #Directors
  get("/", {:controller => "movies", :action => "index"})
  get("/directors", {:controller => "movies", :action => "index"})
  get("/delete_director/:some_id", {:controller => "movies", :action =>"delete_row"})
  get("/directors/new_form", {:controller => "movies", :action => "new_form"})
  get("/directors/create_form", {:controller => "movies", :action => "create_form"})
  get("/directors/:number/edit_form", {:controller => "movies", :action => "edit_form"})
  get("/update_director/:an_id", {:controller =>"movies", :action=> "update_form"})
  get("/directors/:the_id", {:controller =>"movies", :action => "read_row"})
  
  #Actors
  # get("/", {:controller => "actors", :action => "index"})
  get("/actors", {:controller => "actors", :action => "index"})
  get("/delete_actor/:some_id", {:controller => "actors", :action =>"delete_row"})
  get("/actors/new_form", {:controller => "actors", :action => "new_form"})
  get("/actors/create_form", {:controller => "actors", :action => "create_form"})
  get("/actors/:number/edit_form", {:controller => "actors", :action => "edit_form"})
  get("/update_actor/:an_id", {:controller =>"actors", :action=> "update_form"})
  get("/actors/:the_id", {:controller =>"actors", :action => "read_row"})
  

  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"

end
