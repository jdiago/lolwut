Lolwut::Application.routes.draw do
  root to: 'user_files#index'
  resources :user_files
end
