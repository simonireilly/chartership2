Rails.application.routes.draw do
  resources :evidences
  root to: 'evidences#index'
  #devise_for :users, path: '', path_names: { sign_in: '/', sign_out: '/', sign_up: '/'}

  devise_for :users



end
