require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Sinatra::Initializers do
  class TestSinatraApplication < Sinatra::Base
    register Sinatra::Initializers
  end

  describe "using base settings" do
    it "defaults the setting config_directory to config/initializers" do
      Sinatra::Base.config_directory.should == "config/initializers"
    end
  end

  describe "using an example initializer" do
    it "allows you to override config_directory" do
      TestSinatraApplication.config_directory = "spec/config/initializers"
      TestSinatraApplication.config_directory.should == "spec/config/initializers"
    end

    it "registers an initializer for the test sinatra application" do
      TestSinatraApplication.config_directory = "spec/config/initializers"
      Test::THAT_I_EXIST.should == true
    end
  end  
end
