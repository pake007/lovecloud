ActionController::Routing::Routes.draw do |map|
  map.namespace :admin do |admin|
    admin.resources :posts
    admin.resources :comments
    admin.resources :tags
  end

  map.root :controller => 'posts', :action => 'index'
  map.resources :posts
end
