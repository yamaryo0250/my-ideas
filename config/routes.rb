Rails.application.routes.draw do
  get 'ideas/index'
  root to: "ideas#index"
  resources :ideas, only: [:index, :new, :create]
end
      