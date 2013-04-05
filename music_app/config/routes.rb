MusicApp::Application.routes.draw do
  resources :artists
  resources :bands do
    resources :recordings, :only => [:index, :new]
  end
  resources :recordings
  resources :singles
  root :to => "artists#index"
end
