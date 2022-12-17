Rails.application.routes.draw do
  resources :homes
  root 'homes#index' 
  #thay man hinh main 
  


  devise_scope :user do 
    get "/users/sign_out" => "devise/sessions#destroy"
  end
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
