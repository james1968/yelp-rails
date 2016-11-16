Rails.application.routes.draw do
  devise_for :users
  root "restaurant#index"
  resources :restaurants do
    resources :reviews
  end

end
