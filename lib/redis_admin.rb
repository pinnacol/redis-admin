# Loading engine only if this is not a standalone installation
unless defined? RedisAdmin::Application
  require File.expand_path('redis_admin/engine', File.dirname(__FILE__))
end

[
  'redis_admin/configuration',
  'redis_admin/http_auth'
].each do |path|
  require File.expand_path(path, File.dirname(__FILE__))
end

module RedisAdmin
  class << self
    # Modify RedisAdmin configuration
    # Example:
    #   RedisAdmin.configure do |config|
    #     config.cms_title = 'Comfortable Mexican Sofa'
    #   end
    def configure
      yield configuration
    end
    
    # Accessor for RedisAdmin::Configuration
    def configuration
      @configuration ||= Configuration.new
    end
    alias :config :configuration
  end
end
