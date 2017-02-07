Rails.application.routes.draw do

  get 'hello_world', to: 'hello_world#index'

  root 'index#index'
  resources :questions

  namespace :quiz do
    resources :finished, only: [:index] 
  end
  resources :quiz, only: [:show, :update]

end
