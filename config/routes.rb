Rails.application.routes.draw do

  resources :questions

  root 'index#index'

  namespace :quiz do
    resources :finished, only: [:index]
  end
  resources :quiz, only: [:show, :update]

end
