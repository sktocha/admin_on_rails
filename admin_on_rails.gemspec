
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'admin_on_rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'admin_on_rails'
  spec.version       = AdminOnRails::VERSION
  spec.authors       = ['Anton Zlatogorsky']
  spec.email         = ['antonzlatogor@gmail.com']

  spec.summary       = %q{Modern rails admin with view layer on vue.js}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise 'RubyGems 2.0 or newer is required to protect against ' \
  #     'public gem pushes.'
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # spec.add_dependency 'actionpack', '>= 4.2.0', '<6'
  # spec.add_dependency 'actionview', '>= 4.2.0', '<6'
  # spec.add_dependency 'activesupport', '>= 4.2.0', '<6'
  spec.add_dependency 'rails', '>= 4.2.0', '<6'

  spec.add_development_dependency 'listen'
  spec.add_development_dependency 'sqlite3'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'slim-rails'
  spec.add_development_dependency 'better_errors'
  # spec.add_development_dependency 'require_reloader'
  # spec.add_development_dependency 'gem_reloader'

  spec.add_development_dependency 'binding_of_caller'
  spec.add_development_dependency 'pry-rails'
  spec.add_development_dependency 'pry-byebug'
end
