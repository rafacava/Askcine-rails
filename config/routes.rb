Rails.application.routes.draw do
  get 'pages/home'
  devise_for :users
  get 'login' => "login#login", as: "login"
  get 'busca/filmes' => 'busca/filmes', as: "buscafilmes"
  get 'busca/cinema'
  get 'principal/index'
   
   resources :filmes
 
  get 'filmes/index'
  root 'principal#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
