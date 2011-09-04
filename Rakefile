#!/usr/bin/env rake

require 'rubygems'
require 'coyote'
require 'yaml'

config  = YAML.load(File.open(File.expand_path(File.dirname(__FILE__) + "/config/config.yaml")))
@sass   = config['sass']
@js     = config['js'] 


desc "Default task :: build it"
task :default => [:build]

desc "Compile both Sass and JavaScript source files"
task :build => ['js:build','sass:build']


namespace :sass do
  desc "Compile Sass from source"
  task :build do
    sh "sass #{@sass['input_dir']}/#{@sass['input_file']}:#{@sass['output_dir']}/#{@sass['output_file']} --style #{@sass['style']}"
  end

  desc "Watch Sass source files for changes and recompile automatically"
  task :watch do
    sh "sass #{@sass['input_dir']}:#{@sass['output_dir']} --style #{@sass['style']} --watch"
  end
end


namespace :js do
  config = Coyote::Configuration.new
  config.inputs = @js['input']
  config.output = @js['output']
  config.options['compress'] = @js['compress']
  config.options['verbose'] = @js['verbose']

  desc "Compile JavaScript and CoffeeScript from source"
  task :build do
    Coyote::build config
  end

  desc "Watch JS/CS source files for changes and recompile automatically"
  task :watch do
    Coyote::watch config
  end
end
