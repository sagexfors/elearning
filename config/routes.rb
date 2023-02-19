# frozen_string_literal: true

Rails.application.routes.draw do
  resources :notifications, only: :index
  get 'students/index'
  devise_for :users
  get 'lessons/new'
  get 'dashboards', to: 'dashboards#home'
  get '/teacher_dashboard', to: 'dashboards#teacher', as: 'dashboards_teacher'
  get '/student_dashboard', to: 'dashboards#student', as: 'dashboards_student'
  post '/enrollments/enroll', to: 'enrollments#enroll', as: 'enrollments_enroll'
  root 'dashboards#home'

  resources :subjects do
    resources :lessons
    resources :activities
  end
  resources :lessons, only: :index
  resources :activities, only: :index
  resources :activity_submissions, only: [:create, :edit, :update, :show]
end
