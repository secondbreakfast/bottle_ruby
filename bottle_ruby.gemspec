Gem::Specification.new do |specification|
  specification.name        = 'bottle_ruby'
  specification.version     = '0.0.4'
  specification.date        = '2017-06-07'
  specification.summary     = "Interact with the Bottle API in ruby."
  specification.description = "Interact with the Bottle API in ruby."
  specification.authors     = ["Will Schreiber", "Bottle Labs, LLC"]
  specification.email       = 'will@sendbottles.com'
  specification.files       = ["lib/bottle_ruby.rb", "lib/api_objects/message.rb", "lib/client/rest_calls.rb", "lib/extensions/hash.rb"]
  specification.homepage    = 'https://github.com/secondbreakfast/bottle_ruby'
  specification.license     = 'MIT'
  specification.add_runtime_dependency 'faraday'
  specification.add_runtime_dependency 'json'
end