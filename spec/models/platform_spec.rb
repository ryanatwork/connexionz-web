require 'spec_helper'

describe Platform do

  describe "add_platforms" do
    before do
      @test = Platform.new.add_platforms
    end

    it "should add platforms to the database" do
      @test.should_not be_nil
    end
  end

  describe "connexionz" do
    it "should return a new Connexionz client" do
      @test = Platform.new.connexionz
      @test.should be_a Connexionz::Client
    end

  end
end
