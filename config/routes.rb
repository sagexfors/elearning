Rails.application.routes.draw do
  devise_for :users
  get 'lessons/new'
  get 'dashboards', to: "dashboards#home"
  root "pages#home"

  resources :subjects do
    resources :lessons
  end
end
