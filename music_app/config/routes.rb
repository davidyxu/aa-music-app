MusicApp::Application.routes.draw do
  resources :artists
  resources :bands do
    collection do
      get 'search'
    end
    resources :recordings, :only => [:new]
  end
  resources :recordings do
    resources :singles, :only => [:new]
  end
  resources :singles
  root :to => "artists#index"
end