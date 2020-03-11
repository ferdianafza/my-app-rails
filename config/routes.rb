Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do

      devise_for :users,
                 path: '',
                 path_names: {
                   sign_in: 'login',
                   sign_out: 'logout',
                   registration: 'signup',
                 },
                 controllers: {
                   students: 'api/v1/students',
                   sessions: 'api/v1/devise/sessions',
                   registrations: 'api/v1/devise/registrations'
                 }

      resources :students
      get 'users/myprofile'
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
