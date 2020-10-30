Rails.application.routes.draw do
  devise_for :users

  root :to => 'homes#top'
  get 'home/top'
  get 'home/about'
  resources :users,only:[:index, :show, :edit, :destroy]
  get 'users/show/' => 'users#show'
  resources :posts,only:[:index, :show, :new]
  root 'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
