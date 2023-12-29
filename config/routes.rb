Rails.application.routes.draw do
  # Sets counter controller index action as root path ('/')
  root 'counter#index'

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Redirect any other path to root
  match '*path' => 'counter#index', via: :all
end
