Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  get("/", { :controller => "place", :action => "index" })
  resources "place"
  resources "entries"
end
