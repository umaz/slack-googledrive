# -*- encoding: utf-8 -*-
# stub: async-websocket 0.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "async-websocket".freeze
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Samuel Williams".freeze]
  s.date = "2019-02-08"
  s.email = ["samuel.williams@oriontransfer.co.nz".freeze]
  s.homepage = "".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.1".freeze
  s.summary = "An async websocket library on top of websocket-driver.".freeze

  s.installed_by_version = "3.0.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<websocket-driver>.freeze, ["~> 0.7.0"])
      s.add_runtime_dependency(%q<async-io>.freeze, [">= 0"])
      s.add_development_dependency(%q<async-rspec>.freeze, [">= 0"])
      s.add_development_dependency(%q<falcon>.freeze, ["~> 0.17.0"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.6"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    else
      s.add_dependency(%q<websocket-driver>.freeze, ["~> 0.7.0"])
      s.add_dependency(%q<async-io>.freeze, [">= 0"])
      s.add_dependency(%q<async-rspec>.freeze, [">= 0"])
      s.add_dependency(%q<falcon>.freeze, ["~> 0.17.0"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.6"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<websocket-driver>.freeze, ["~> 0.7.0"])
    s.add_dependency(%q<async-io>.freeze, [">= 0"])
    s.add_dependency(%q<async-rspec>.freeze, [">= 0"])
    s.add_dependency(%q<falcon>.freeze, ["~> 0.17.0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.6"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
  end
end
