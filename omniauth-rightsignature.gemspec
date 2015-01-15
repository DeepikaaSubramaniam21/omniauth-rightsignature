# coding: utf-8
lib =File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/rightsignature/version'

Gem::Specification.new do |gem|
gem.name = 'omniauth-rightsignature'
gem.version = OmniAuth::Rightsignature::VERSION
gem.homepage = 'https://github.com/DeepikaaSubramaniam21/omniauth-rightsignature/'
gem.author = "Deepikaa Subramaniam"
gem.email = 'deepikaa.subramaniam@citrix.com'
gem.description = 'RightSignature strategy for OmniAuth 1.0'
gem.summary = gem.description
gem.add_dependency "omniauth-oauth", "~> 1.0"
gem.add_development_dependency 'rake', '~> 0.9'
gem.add_development_dependency 'rdiscount', '~> 1.6'
gem.add_development_dependency 'rspec', '~> 2.7'
gem.add_development_dependency 'simplecov', '~> 0.5'
gem.add_development_dependency 'yard', '~> 0.7'
gem.add_development_dependency 'webmock', '~> 1.7'
gem.executables = `git ls-files -- bin/*`.split("\n").map{|f| File.basename(f)}
gem.files = `git ls-files`.split("\n")
#gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
gem.require_paths = ['lib']
end