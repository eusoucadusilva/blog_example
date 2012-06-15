Blog::Application.routes.draw do
  root :to => 'posts#index'

  controller :posts do
    get   'posts',      :action => :index, :as => :posts
    post  'posts',      :action => :create
    get   'posts/new',  :action => :new, :as => :new_post
    get   'posts/:id',  :action => :show, :as => :post
  end
end
