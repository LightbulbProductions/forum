Rails.application.routes.draw do
  devise_for :users

  resources :forum_threads do
    resources :forum_posts, module: :forum_threads
  end

  resources :users do
    collection do
      post :import
    end
  end
  root to: "forum_threads#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
