Jade::Application.routes.draw do
  root :to => "pages#index"
  match ":page", :to => "pages#show"
end
