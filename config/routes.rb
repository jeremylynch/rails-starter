Rails.application.routes.draw do
  root :to => redirect('welcome/dashboard')
  get 'welcome/dashboard'
  devise_for :users
end
