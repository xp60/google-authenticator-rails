Rails.application.routes.draw do
  get 'user_mfa_sessions/UserMfaSessionController'
  root 'user_mfa_session#new'
  resource :user_mfa_session, only: %i(new create)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
