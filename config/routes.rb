Rails.application.routes.draw do
  get 'dashboards', to: "dashboards#home"
  root "pages#home"

  resources :subjects do
    resources :lessons
  end
end
