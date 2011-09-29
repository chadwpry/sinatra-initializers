require 'yaml'
require 'sinatra/base'

module Sinatra
  class Base
    set(:config_directory, "config/initializers") unless respond_to?(:config_directory)
  end

  module Initializers
    VERSION = '0.1.0' unless const_defined?(:VERSION)

    def self.version
      "Sinatra::Initializers v#{VERSION}"
    end

    def self.registered app
      Dir["#{app.config_directory}/**/*.rb"].each do |file_path|
        require File.join(Dir.pwd, file_path)
      end
    end
  end
end

