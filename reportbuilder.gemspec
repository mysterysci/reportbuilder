lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "reportbuilder"
  spec.version       = "1.4.3"
  spec.authors       = ["Claudio Bustos"]
  spec.email         = ["clbustos@gmail.com"]

  spec.summary       = "Fork of old ReportBuilder without PDF"
  spec.description   = "Fork of old ReportBuilder without PDF so we can use a newer Prawn"
  spec.homepage      = "https://github.com/mysterysci/reportbuilder"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "no pushing to any gem server yet"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/mysterysci/reportbuilder"
    # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  spec.files         = Dir["LICENSE.txt", "README.md", "lib/**/*"]

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "clbustos-rtf","~>0.4.0"
  spec.add_dependency "text-table", "~>1.2"

  spec.add_development_dependency "nokogiri", "~>1.5"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "> 10.0"
end
