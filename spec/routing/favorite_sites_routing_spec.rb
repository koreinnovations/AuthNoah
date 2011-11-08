require "spec_helper"

describe FavoriteSitesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/favorite_sites" }.should route_to(:controller => "favorite_sites", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/favorite_sites/new" }.should route_to(:controller => "favorite_sites", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/favorite_sites/1" }.should route_to(:controller => "favorite_sites", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/favorite_sites/1/edit" }.should route_to(:controller => "favorite_sites", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/favorite_sites" }.should route_to(:controller => "favorite_sites", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/favorite_sites/1" }.should route_to(:controller => "favorite_sites", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/favorite_sites/1" }.should route_to(:controller => "favorite_sites", :action => "destroy", :id => "1")
    end

  end
end
