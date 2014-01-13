CodequestTeaApp::Application.routes.draw do

  resources :teas
  resources :sessions

  root 'pages#index'
end
