Rails.application.routes.draw do
  get 'home/index'
  resources :assignees
  resources :reports
  resources :notifications
  resources :dashboards
  resources :submissions
  resources :feedbacks
  resources :teams
  resources :tasks
  resources :projects
  resources :users
  devise_for :users
  
  # Defines the root path route ("/")
  root 'home#index'
end
