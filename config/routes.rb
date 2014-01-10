CodequestTeaApp::Application.routes.draw do

  resources :teas

  root 'pages#index'
end
