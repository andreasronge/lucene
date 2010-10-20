lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
 
require 'lucene/version'


Gem::Specification.new do |s|
  s.name = "lucene"
  s.version = Lucene::VERSION
#  s.platform = Gem::Platform::CURRENT  # will probably support  C Ruby via RJB also in the future
  s.authors = "Andreas Ronge"
  s.email = 'andreas.ronge@gmail.com'
  s.homepage = "http://github.com/andreasronge/lucene/tree"
  s.rubyforge_project = 'lucene'
  s.summary = "A lucene wrapper for JRuby"
  s.description = s.summary
  s.require_path = 'lib'
  s.files        = Dir.glob("{bin,lib}/**/*") + %w(README.rdoc CHANGELOG CONTRIBUTORS Gemfile lucene.gemspec)
  s.has_rdoc = true
  s.extra_rdoc_files = %w( README.rdoc )
  s.rdoc_options = ["--quiet", "--title", "Lucene.rb", "--opname", "index.html", "--line-numbers", "--main", "README.rdoc", "--inline-source"]
  s.required_ruby_version = ">= 1.8.7"
end
