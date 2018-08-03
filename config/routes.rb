require 'sidekiq/web'

Rails.application.routes.draw do
  get 'jobs/show/:id', to: 'jobs#show', as: 'jobs_show'
  get 'jobs/:search', to: 'jobs#search', as: 'jobs_search'

  root to: 'pages#index'
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  mount Sidekiq::Web => '/sidekiq'
end
