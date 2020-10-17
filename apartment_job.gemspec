$LOAD_PATH.push File.expand_path('lib', __dir__)

require 'apartment_job/version'

Gem::Specification.new do |spec|
  spec.name        = 'apartment_job'
  spec.version     = ApartmentJob::VERSION
  spec.authors     = ['Muhammad Usman']
  spec.email       = ['uxman.sherwani@gmail.com']
  spec.homepage    = 'TODO'
  spec.summary     = 'TODO: Summary of ApartmentJob.'
  spec.description = 'TODO: Description of ApartmentJob.'
  spec.license     = 'MIT'

  spec.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'rails', '~> 6.0'

  spec.add_development_dependency 'sqlite3'
end
