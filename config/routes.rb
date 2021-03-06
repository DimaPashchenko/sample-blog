Rails.application.routes.draw do
  devise_for :users

  root to: "home#index"

  get 'home/index'

  get 'terms' => 'pages#terms'

  get 'about' => 'pages#about'

  #get 'contacts' => 'contacts#new' - коли зі строки знизу видаляєто :new
  resource :contacts, only: [:new, :create], path_names: {:new => ''}
  resources :articles do
    resources :comments
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
