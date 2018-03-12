Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "forecasts#index"
  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  # Routes for the Forecast resource:
  # CREATE
  get "/forecasts/new", :controller => "forecasts", :action => "new"
  post "/create_forecast", :controller => "forecasts", :action => "create"

  # READ
  get "/forecasts", :controller => "forecasts", :action => "index"
  get "/forecasts/:id", :controller => "forecasts", :action => "show"

  # UPDATE
  get "/forecasts/:id/edit", :controller => "forecasts", :action => "edit"
  post "/update_forecast/:id", :controller => "forecasts", :action => "update"

  # DELETE
  get "/delete_forecast/:id", :controller => "forecasts", :action => "destroy"
  #------------------------------

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
