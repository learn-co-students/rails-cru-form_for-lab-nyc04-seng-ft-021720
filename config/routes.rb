Rails.application.routes.draw do

  resources :genres, only: [:show, :new, :create, :edit, :update]
    # patch 'genres/:id', to: 'genres#update'
  resources :artists, only: [:show, :new, :create, :edit, :update]
    # patch 'artists/:id', to: 'artists#update'
  resources :songs, only: [:index, :show, :new, :create, :edit, :update]
    # patch 'songs/:id', to: 'songs#update'
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
