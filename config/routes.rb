Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :admins
  devise_for :users

  authenticate :admin do 
    resource :admins, only: [:index, :new, :create]
  end
  authenticate :users do 
    get "/dashboard", to: "users#dashboard", as: "dashboard"
  end

  resources :passwords, only: [:edit, :update]
end
