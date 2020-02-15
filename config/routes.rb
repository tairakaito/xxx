Rails.application.routes.draw do
  get 'todolists/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top',as:'root'
  post 'todolists' => 'todolists#create'



    get 'todolists' => 'todolists#index',as:'books'
    get 'todolists/:id' => 'todolists#show', as: 'book'
    get 'todolists/:id/edit' => 'todolists#edit', as: 'edit_book'
    patch 'todolists/:id' => 'todolists#update', as: 'update_book'
    delete 'todolists/:id' => 'todolists#destroy', as: 'destroy_book'
end
