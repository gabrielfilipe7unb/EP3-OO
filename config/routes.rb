Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
    resources :departamentos
    resources :produtos, only: [:new, :create, :destroy, :edit, :update]
    get "/produtos/busca" => "produtos#busca", as: :busca_produto
    root "produtos#index"
end
