Rails.application.routes.draw do
  namespace :redis_admin, :path => RedisAdmin.config.admin_route_prefix, :except => :show do
    get '/' => redirect(RedisAdmin.config.admin_route_redirect)
    resources :overview
    resources :queues
    resources :workers
    resources :keys
  end
end
