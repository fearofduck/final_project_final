Rails.application.routes.draw do
  # Routes for the Ds53_ct resource:
  # CREATE
  get "/ds53_cts/new", :controller => "ds53_cts", :action => "new"
  post "/create_ds53_ct", :controller => "ds53_cts", :action => "create"

  # READ
  get "/ds53_cts", :controller => "ds53_cts", :action => "index"
  get "/ds53_cts/:id", :controller => "ds53_cts", :action => "show"

  # UPDATE
  get "/ds53_cts/:id/edit", :controller => "ds53_cts", :action => "edit"
  post "/update_ds53_ct/:id", :controller => "ds53_cts", :action => "update"

  # DELETE
  get "/delete_ds53_ct/:id", :controller => "ds53_cts", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
