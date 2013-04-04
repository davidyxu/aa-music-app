MusicApp::Application.routes.draw do
  resources :artists
  resources :bands
  resources :recordings
  resources :singles
  root :to => "artists#index"
end
