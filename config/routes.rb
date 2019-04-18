Rails.application.routes.draw do
  get 'colaborador/portal'
  get 'colaborador/novo'
  get 'colaborador/noticias'
  get 'colaborador/portal'
  get 'colaborador/novo'
  get 'lancamento/filmes' => 'lancamento/filmes', as: "lancamentos"
  get 'lancamento/postagens'=> 'lancamento/postagens', as: "postagens"
  resources :comentafilmes
  get 'mostra/filme'
  get 'mostra/cinema'
  get 'mostra/noticia'
  get 'buscar/cinemas'
  get 'buscar/filme'
  get 'sessoes/filme'
  get 'sessoes/cinema'
  get 'contato/index'
  get 'sobre/index'
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
  
   get 'sobre/index'=> 'sobre/index', as: "sobre"
   get 'contato/index'=> 'contato/index', as: "contato"


 
  get 'filmes/index'
  get 'cinemas/index'
  get 'cidades/index'
  get 'sessaos/index'=> 'sessaos/index', as: "sessaosindex"
  get 'destaques/index'
  get 'postagems/index'
  
  root 'principal#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
