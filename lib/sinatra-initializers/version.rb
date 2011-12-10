module Sinatra
  module Initializers
    VERSION = '0.1.3' unless const_defined?(:VERSION)

    def self.version
      VERSION
    end
  end
end

