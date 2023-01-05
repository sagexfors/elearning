# frozen_string_literal: true

Rails.application.routes.draw do
  get 'students/index'
  devise_for :users
  get 'lessons/new'
  get 'dashboards', to: 'dashboards#home'
  get '/teacher_dashboard', to: 'dashboards#teacher', as: 'dashboards_teacher'
  get '/student_dashboard', to: 'dashboards#student', as: 'dashboards_student'
  root 'dashboards#home'

  resources :subjects do
    resources :lessons
    resources :activities
  end
  resources :lessons, only: :index
  resources :activities, only: :index
end
