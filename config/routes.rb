ConnexionzWeb::Application.routes.draw do

  resources :platforms, :only => [:index, :show]
  resources :eta, :only => [:index]
  root :to => "welcome#index"

end
