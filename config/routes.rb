Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  devise_scope :user do
    get 'email_confirmation', to: 'users/sessions#redirect_from_magic_link'
    post 'sign_in_with_token', to: 'users/sessions#sign_in_with_token'
  end
  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development?

  root 'landing#index'
  get 'landing/index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
