task :default => :test
require 'rake/testtask'
require 'rbconfig'

Rake::TestTask.new do |t|
  t.libs = ["test"]
  t.test_files = FileList['test/test_*.rb'] 
  t.ruby_opts << '-rhelper' << '-rtest/unit'
  t.verbose = true
end
