Rails.application.routes.draw do
  get 'home/index'

  resources :categories
  resources :courses
  resources :students

  get 'students/:id/attend', to: 'students#attend'

  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
