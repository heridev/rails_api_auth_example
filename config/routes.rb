OauthTest::Application.routes.draw do

  devise_scope :user do
    get 'users/sign_out' => 'devise/sessions#destroy', :as => :destroy_user_session
  end

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

	root :to => "home#index"

  resources :kindles, format: :json

end
