require 'spec_helper'

describe PlatformsController do

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end

    it "should redirect to show path" do
      get 'index', :id => '10279'
      response.should redirect_to platform_path(10279)
    end
  end

  describe "GET 'show'" do
    it "should be successful" do
      get :show, :id => '10279'
      response.should render_template("platforms/show")
    end
  end

end
