# frozen_string_literal: true

Rails.application.routes.draw do
  get 'students/index'
  devise_for :users
  get 'lessons/new'
  get 'dashboards', to: 'dashboards#home'
  root 'dashboards#home'

  resources :subjects do
    resources :lessons
    resources :activities
  end
  resources :lessons, only: :index
end
