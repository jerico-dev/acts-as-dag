# -*- encoding: utf-8 -*-
Gem::Specification.new do |s|
  s.name        = "acts-as-dag"
  s.version     = File.read('VERSION')
  s.authors     = ['Matthew Leventi', 'Robert Schmitt']
  s.email       = ["resgraph@cox.net"]
  s.homepage    = 'https://github.com/resgraph/acts-as-dag'
  s.summary     = %q{Directed Acyclic Graph hierarchy for Rail's ActiveRecord}
  s.description = %q{Directed Acyclic Graph hierarchy for Rail's ActiveRecord}

  s.rubyforge_project = "acts-as-dag"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # As specified in test/dag_test.rb
  s.add_development_dependency 'activerecord', '~> 2.3.8'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'sqlite3'
  s.add_runtime_dependency 'activesupport'
  s.add_runtime_dependency 'activerecord'
end
