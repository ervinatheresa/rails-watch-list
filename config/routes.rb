# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#   get 'lists', to: 'lists#index', as: :lists
#   get 'lists/new', to: 'lists#new', as: :new_lists
#   get 'lists/:id', to: 'lists#show', as: :list
#   post 'lists', to: 'lists#create'
# end


Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  resources :lists, except: [:edit, :update] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: :create
  end
  resources :bookmarks, only: :destroy
  resources :reviews, only: :destroy
end
