Rails.application.routes.draw do
<<<<<<< HEAD
    devise_for :admins
    devise_for :users
=======
  namespace :site do
    get 'home/index'
  end
  namespace :adminoffice do
    get 'dashboard/index'
  end
  devise_for :admins
  devise_for :users
>>>>>>> 0d5c0d2fab6b03ae9be72b8ddee7e06337030404
    resources :departamentos
    resources :produtos, only: [:new, :create, :destroy, :edit, :update]
    get "/produtos/busca" => "produtos#busca", as: :busca_produto
    root "site/home#index"
end
