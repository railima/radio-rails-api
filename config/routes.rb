Rails.application.routes.draw do
  resources :posts
  devise_for :admin_users, ActiveAdmin::Devise.config
  scope ':locale', locale: /pt-BR|en/, defaults: { locale: 'pt-BR' } do
    ActiveAdmin.routes(self)
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
