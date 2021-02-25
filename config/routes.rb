Rails.application.routes.draw do

  root 'about#index'
  get 'about/index'

  resources :articles do
  	resources :comments
  end
  
  devise_scope :user do 
    get 'users/show' => 'users/registrations#show'
    post 'users/edit' => 'users/registrations#edit'
  end

  Rails.application.routes.draw do
      devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
    end

end
