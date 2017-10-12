Rails.application.routes.draw do
resources :cocktails do
    resources :doses, only: [:index, :show, :new, :create]
end
resources :doses
end


# only: [:index :show  :new :create
