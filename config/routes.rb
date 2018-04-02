Rails.application.routes.draw do


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'articles#index'
  #get '/admin',to: 'articles#admin'

  resources :articles do
    resources :comments
  end

  namespace :admin do
    resources :articles do
      resources :comments
    end
  end
end
