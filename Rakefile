#!/usr/bin/env rake
require "bundler/gem_tasks"
require 'cucumber/rake/task'

Cucumber::Rake::Task.new do |t|
  t.cucumber_opts = "--format pretty"
end
task :cuc => :cucumber

task :default => [:cucumber]
