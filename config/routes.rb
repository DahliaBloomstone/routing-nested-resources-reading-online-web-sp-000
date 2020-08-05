Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, only: [:show]

# nested resources for posts
# regular resourced post routes because we want people to see all posts, create, edit, etc.
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'

end


#the point of nesting our routes is to dry up our code. 
