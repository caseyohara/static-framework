#!/usr/bin/env rake

require 'rubygems'
require 'coyote'
require 'yaml'

desc "Default task :: build it"
task :default => [:build]

desc "Build both CSS and JavaScript source files, uncompressed"
task :build => ['js:build','css:build']

namespace :css do
  desc "Compile CSS and SASS from source"
  task :build do
    sh "build/compile --with-css"
  end

  desc "Watch CSS source files for changes and recompile automatically"
  task :watch do
    sh "build/compile --with-css --watch"
  end
end


namespace :js do
  desc "Compile JavaScript and CoffeeScript from source"
  task :build do
    sh "build/compile --with-js"
  end

  desc "Watch JS/CS source files for changes and recompile automatically"
  task :watch do
    sh "build/compile --with-js --watch"
  end
end