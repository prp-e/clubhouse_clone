Rails.application.routes.draw do
  resources :rooms
  #devise_for :users
  devise_for :users, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }
  resources :profile do 
    resources :follows 
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
