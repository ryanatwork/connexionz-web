ConnexionzWeb::Application.routes.draw do

  get "eta/index"

  resources :platforms, :only => [:index, :show]

  root :to => "welcome#index"

end
