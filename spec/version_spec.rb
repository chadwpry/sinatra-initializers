require 'spec_helper'

describe 'Sinatra::Initializers' do
  it 'should be the correct version' do
    Sinatra::Initializers.version.should == 'Sinatra::Initializers v0.1.0'
  end
end