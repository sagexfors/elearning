# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  get 'lessons/new'
  get 'dashboards', to: 'dashboards#home'
  root 'dashboards#home'

  resources :subjects do
    resources :lessons
  end

  resources :users do
    resources :subjects
  end
end
