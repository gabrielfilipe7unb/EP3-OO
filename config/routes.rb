Rails.application.routes.draw do

    devise_for :admins
    devise_for :users

  namespace :site do
    get 'home/index'
  end

  namespace :adminoffice do
    get 'dashboard/index'
  end

  namespace :produtos do
    get 'index'
  end

  namespace :users do
    get 'in'
  end

  namespace :users do
    get 'new'
    get 'edit'
  end


    resources :departamentos
    resources :produtos, only: [:new, :create, :destroy, :edit, :update]
    get "/produtos/busca" => "produtos#busca", as: :busca_produto
    root "site/home#index"
end
