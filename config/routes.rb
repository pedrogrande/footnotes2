Rails.application.routes.draw do
  get 'my_quiz', to: 'pages#my_quiz'
  get 'admin', to: 'pages#admin'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :answers do
    member do
      get :record
    end
  end
  resources :correct_answers
  resources :codes
  resources :questions
  resources :question_types
  resources :quizzes
  resources :year_groups
  resources :profiles
  devise_for :users, controllers: { registrations: "registrations" }
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
