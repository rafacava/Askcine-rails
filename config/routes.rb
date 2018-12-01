Rails.application.routes.draw do
  get 'lancamentos/index'
  resources :destaques
  resources :postagems
  resources :sessaos
  resources :cinemas
  resources :cidades
    resources :filmes
    
  get 'administracao/home'
  devise_for :users
  get 'login' => "login#login", as: "login"
  
  get 'busca/filmes' => 'busca/filmes', as: "buscafilmes"
  get 'busca/cinema' => 'busca/cinema', as: "buscacinema"
  
  get 'filmes/new' => 'filmes/new', as: "filmesnew"
  get 'cinemas/new' => 'cinemas/new', as: "cinemasnew"
  get 'cidades/new' => 'cidades/new', as: "cidadesnew"
  get 'sessaos/new' => 'sessaos/new', as: "sessaosnew"
  get 'destaques/new' => 'destaques/new', as: "destaquesnew"
  get 'postagems/new' => 'postagems/new', as: "postagemsnew"

  
  get 'principal/index'
   
 get 'lancamentos/index' => 'lancamentos/index', as: "lancamentos"
 
  get 'filmes/index'
  get 'cinemas/index'
  get 'cidades/index'
  get 'sessaos/index'=> 'sessaos/index', as: "sessaosindex"
  get 'destaques/index'
  get 'postagems/index'
  
  root 'principal#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
