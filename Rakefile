require "bundler/gem_tasks"

desc "Default task"
task default: :spec

desc "Open an irb session preloaded with this library"
task :console do
  sh "irb -rubygems -I lib -r fuzzy/finder.rb"
end

desc "Run specs"
task :spec do
  system "rspec ."
end