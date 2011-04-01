# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "redis_admin/version"

Gem::Specification.new do |s|
  s.name        = "redis_admin"
  s.version     = RedisAdmin::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["DeLynn Berry", "Pinnacol Assurance"]
  s.date        = %q{2011-04-01}
  s.email       = ["delynn@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "redis-admin"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_dependency(%q<rails>, [">= 3.0.3"])
    else
      s.add_dependency(%q<rails>, [">= 3.0.3"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.0.3"])
  end
end
