class RedisAdmin::BaseController < ApplicationController
  protect_from_forgery

  # Authentication module must have #authenticate method
  include RedisAdmin.config.authentication.to_s.constantize

  before_filter :authenticate

  layout "redis_admin"
end
