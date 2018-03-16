git = File.expand_path('../.git', __FILE__)
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "camome_gc_watcher/version"

Gem::Specification.new do |spec|
  spec.name          = "camome_gc_watcher"
  spec.version       = CamomeGcWatcher::VERSION
  spec.authors       = ["Nomura Laboratory, Hiromu, Ishikawa, Yoshinari Nonura"]
  spec.email         = ["nomura.laboratory@gmail.com"]

  spec.summary       = %q{Watch Google calenar and send events via gRPC to upstreams.}
  spec.description   = %q{Watch Google calenar and send events via gRPC to upstreams.}
  spec.homepage      = "https://github.com/nomlab/camome_gc_watcher"
  spec.license       = "MIT"

  spec.files         = if Dir.exist?(git)
                         `git ls-files -z`.split("\x0")
                       else
                         Dir['**/*']
                       end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
