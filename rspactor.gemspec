spec = Gem::Specification.new do |s| 
  s.name = "rspactor"
  s.version = "0.2.4"
  s.authors = ["Andreas Wolff","Pelle Braendgaard"]
  s.email = "treas@dynamicdudes.com"
  s.homepage = "http://rubyphunk.com"
  s.platform = Gem::Platform::RUBY
  s.summary = "RSpactor is a little command line tool to automatically run your changed specs (much like autotest)."
  s.files = ["bin/rspactor", "lib/inspector.rb", "lib/interactor.rb", "lib/listener.rb", "lib/resulting.rb", "lib/runner.rb", "lib/rspactor.rb", "asset/rails_fail.png", "asset/rails_ok.png"]
  s.require_path = "lib"
  s.has_rdoc = true
  s.rubyforge_project = "rspactor"
  s.executables << 'rspactor'
  #s.add_dependency("dependency", ">= 0.x.x")
end