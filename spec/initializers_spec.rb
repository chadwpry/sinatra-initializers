require 'spec_helper'

class TestSinatraApplication < Sinatra::Base
  register Sinatra::Initializers
end

describe 'Sinatra::Initializers' do
  it 'should default setting config_directory to config/initializers' do
    Sinatra::Base.config_directory.should == 'config/initializers'
  end
  
  it 'should allow you to override config_directory' do
    Sinatra::Base.config_directory = 'foo/bar'
    Sinatra::Base.config_directory.should == 'foo/bar'
  end
  
  it 'should register an initializer for the test sinatra application' do
    Test::FOO.should == 'BAR'
  end
end