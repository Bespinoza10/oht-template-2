Rails.application.routes.draw do
  devise_for :users,
                 :controllers => {:sessions => "sessions"}
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'template#index'
  resources :contents
  resources :headers
  # resources :services, :path_names => { :edit => 'update' }
  resources :services
  resources :slogans
  resources :portfolios
  resources :contacts
  resources :footers
  resources :titles
end
