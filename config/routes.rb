  Rails.application.routes.draw do

  
  devise_for :users, :controllers => { :o_auth_callbacks => "users/o_auth_callbacks"}
  devise_scope  :users do 
    get 'users/sign_in', to: 'users/sessions#new', as: :new_session_path

    get 'users/sign_out', to: 'users/sessions#destroy', as: :destroy_user_session_path
  end


  resources :users
  root "users#index"
end
 