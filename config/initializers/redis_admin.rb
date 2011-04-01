RedisAdmin.configure do |config|
  # Title of the admin area
  config.redis_admin_title      = 'Redis Admin'
  
  # Module responsible for authentication. You can replace it with your own.
  # It simply needs to have #authenticate method. See http_auth.rb for reference.
  config.authentication = 'RedisAdmin::HttpAuth'
  
  # Default url to access admin area is http://yourhost/redis/admin/ 
  # You can change 'admin/redis' to 'redis-admin', for example.
  #   config.admin_route_prefix = 'admin/redis'
  
  # Path: /admin/redis redirects to /admin/redis/overview but you can change it
  # You don't need to change it when changing admin_route_prefix
  #   config.admin_route_redirect = '/admin/redis/overview'
end

# Default credentials for RedisAdmin::HttpAuth
RedisAdmin::HttpAuth.username = 'username'
RedisAdmin::HttpAuth.password = 'password'

# If you need to inject some html in cms admin views you can define what partial
# should be rendered into the following areas:
#   RedisAdmin::ViewHooks.add(:navigation, '/layouts/admin/navigation')
#   RedisAdmin::ViewHooks.add(:html_head, '/layouts/admin/html_head')
#   RedisAdmin::ViewHooks.add(:page_form, '/layouts/admin/page_form')