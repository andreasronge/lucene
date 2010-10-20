$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

require 'rake'
require 'rdoc/task'

require "lucene/version"


def assert_committed
  status = %x{git status}
  fail("Can't release gem unless everything is committed") unless status =~ /nothing to commit \(working directory clean\)|nothing added to commit but untracked files present/
end
desc "create the gemspec"
task :build do
  system "gem build lucene.gemspec"
end

desc "release gem to gemcutter"
task :release => :build do
  assert_committed
  system "gem push lucene-#{Lucene::VERSION}.gem"
end

desc "Generate documentation for Neo4j.rb"
RDoc::Task.new do |rdoc|
  rdoc.rdoc_dir = 'doc/rdoc'
  rdoc.title    = "Lucene.rb Documentation #{Lucene::VERSION}"
  rdoc.options << '-f' << 'horo'
  rdoc.options << '-c' << 'utf-8'
  rdoc.options << '-m' << 'README.rdoc'

  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
end

