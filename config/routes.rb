Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/" => "posts#index"
  get "posts/new" => "posts#new"
  get "/:id" => "posts#show"
  get "posts/:id/edit" =>"posts#edit"
  
  patch "posts/:id/update" => "posts#update"
  post "posts/create" => "posts#create"
  delete "posts/:id/destroy" => "posts#destroy"
end

