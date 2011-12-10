require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Sinatra::Initializers do
  it 'is the latest version' do
    Sinatra::Initializers.version.should == '0.1.4'
  end
end

