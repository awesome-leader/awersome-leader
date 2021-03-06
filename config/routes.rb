Rails.application.routes.draw do
  root 'feeds#index'
  resources :feeds
  resources :awesomes
  get 'users/ranking' => 'users#ranking'
  get 'notifications/notify' => 'notifications#notify'

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
