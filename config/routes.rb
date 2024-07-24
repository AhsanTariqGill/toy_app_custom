Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "articles#custom_index"

  get "/custom_new", to: "articles#custom_new"

  post "/custom_add", to: "articles#custom_create"

  get "/custom_show/:id", to: "articles#custom_show"

  get "/custom_destroy/:id", to: "articles#custom_destroy"

  get "/custom_edit/:id", to: "articles#custom_edit"
  post "/custom_update/:id", to: "articles#custom_update"
end
