Rails.application.routes.draw do
  devise_for :users
  root to: 'page#home'
  resources :notems, only: [:index, :new, :create, :show, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
