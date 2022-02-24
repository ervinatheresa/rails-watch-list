Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'lists', to: 'lists#index', as: :lists
  get 'lists/new', to: 'lists#new', as: :new_lists
  get 'lists/:id', to: 'lists#show', as: :list
  post 'lists', to: 'lists#create'
end
