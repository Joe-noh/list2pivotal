require 'rake/testtask'

desc 'Run unit test'
Rake::TestTask.new do |t|
  # $ bundle exec rake test TEST=test/test_specified_path.rb
  t.libs << "test"
  t.test_files = Dir["test/**/test_*.rb"]
  t.verbose = true
end

task default: :test
