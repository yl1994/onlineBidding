Rails.application.routes.draw do
  get 'home/index'
  devise_for :users, controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations",
    passwords: "users/passwords"
  }
  #rake routes 
  #项目根目录
  root to: "home#index"

  #后台管理
  namespace :admin do 
    get '/' => 'home#index'
  end 

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
