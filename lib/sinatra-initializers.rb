require 'sinatra/base'
require 'sinatra-initializers/version'

module Sinatra
  class Base
    set(:config_directory, "config/initializers")
  end

  module Initializers
    def config_directory= path
      super
      register Sinatra::Initializers
    end

    def self.registered app
      Dir["#{app.config_directory}/**/*.rb"].each do |file_path|
        require File.join(Dir.pwd, file_path)
      end
    end
  end
end

