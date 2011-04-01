class RedisAdmin::Configuration
  attr_accessor :redis_admin_title

  attr_accessor :authentication

  attr_accessor :admin_route_prefix

  attr_accessor :admin_route_redirect

  def initialize
    @redis_admin_title    = "Redis Admin"
    @authentication       = "RedisAdmin::HttpAuth"
    @admin_route_prefix   = "admin/redis"
    @admin_route_redirect = "/#{@admin_route_prefix}/overview"
  end
end
