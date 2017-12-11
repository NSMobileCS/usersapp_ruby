Rails.application.routes.draw do

  root 'users#index'

  get 'users' => 'users#index'

  get 'users/new' => 'users#addform'

  get 'users(/:userid)' => "users#display"

  get 'users(/:userid)/edit' => "users#edit"

  get 'users/total' => 'users#total'

  post 'users' => 'users#newfrompost'

  post 'users(/:userid)' => 'users#applyedit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
