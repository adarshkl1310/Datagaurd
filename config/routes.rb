Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
root "teams#index"
resources :teams
resources :employees
resources :team_employees
get '/last_friday_meeting' => 'teams#last_friday_meeting'
end
