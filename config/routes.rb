Rails.application.routes.draw do

  get 'hello_world', to: 'hello_world#index'
  resources :questions
  resources :quiz, only: [:show, :update]

end
