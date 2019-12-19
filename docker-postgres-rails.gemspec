Gem::Specification.new do |s|
  s.name        = "docker-postgres-rails"
  s.version     = "0.0.1"
  s.date        = "2019-12-19"
  s.summary     = "Docker postgresql init, run with rails rake"
  s.description = "create volume, docker run Postgresql"
  s.authors     = ["Chang-Woo Rhee"]
  s.email       = "x1wins@changwoo.net"
  s.files        = Dir.glob("{bin,lib}/**/*") + %w(README.md)
  s.require_paths = ["lib"]
  s.add_development_dependency 'rails', '~> 3.2.0'
  s.homepage    = "https://github.com/x1wins/docker-postgres-rails"
  s.license     = "MIT"
end
