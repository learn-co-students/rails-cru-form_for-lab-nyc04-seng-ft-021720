Rails.application.routes.draw do
  resources :artists, only: [:index, :new, :show, :create, :edit, :update]
  resources :genres, only: [:index, :new, :show, :create, :edit, :update]
  resources :songs, only: [:index, :new, :show, :create, :edit, :update]

  # patch 'artists/:id', to: 'artists#update'
  # patch 'genre/:id', to: 'genre#update'
  # patch 'songs/:id', to: 'songs#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
