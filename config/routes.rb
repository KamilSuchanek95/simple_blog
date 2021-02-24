Rails.application.routes.draw do

  root 'about#index'
  get 'about/index'

  resources :articles do
  	resources :comments
  end
  devise_scope :user do 
    get 'users/show' => 'users/registrations#show'
    post 'users/show' => 'users/registrations#show'
  end

  Rails.application.routes.draw do
      devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
    end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
