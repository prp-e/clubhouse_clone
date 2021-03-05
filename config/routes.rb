Rails.application.routes.draw do
  devise_for :users
  devise_for :user, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }
  resources :profile 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
