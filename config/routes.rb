Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :students, only: [:index, :show]
 # This show route can be refactored into the above resources method call, like so:
  # resources :students, only: [:index, :show]
  # However, for the sake of this lab and seeing how you can pass params through
  # the route, we'll keep it explicit for now and refactor later.
  
  
  resources :students, only: :index
  get "students/:id", to: "students#show", as: 'student'
  get '/students/:id/activate', to: 'students#activate', as: 'activate_student'
end
