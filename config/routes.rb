Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount WebGit::Engine, at: "/rails/git"
  
  get("/", {:controller => "movies", :action => "index"})
  get("/directors", {:controller => "movies", :action => "index"})
  get("/directors/:number", {:controller =>"movies", :action => "read_row"})
  get("/delete_director/:number", {:controller => "movies", :action =>"delete_row"})
  get("/directors/new_form", {:controller => "movies", :action => "new_form"})
  get("/directors/:number/edit_form", {:controller => "movies", :action => "edit_form"})
end
