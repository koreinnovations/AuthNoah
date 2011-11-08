require 'spec_helper'

describe FavoriteSitesController do

  def mock_favorite_site(stubs={})
    (@mock_favorite_site ||= mock_model(FavoriteSite).as_null_object).tap do |favorite_site|
      favorite_site.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all favorite_sites as @favorite_sites" do
      FavoriteSite.stub(:all) { [mock_favorite_site] }
      get :index
      assigns(:favorite_sites).should eq([mock_favorite_site])
    end
  end

  describe "GET show" do
    it "assigns the requested favorite_site as @favorite_site" do
      FavoriteSite.stub(:find).with("37") { mock_favorite_site }
      get :show, :id => "37"
      assigns(:favorite_site).should be(mock_favorite_site)
    end
  end

  describe "GET new" do
    it "assigns a new favorite_site as @favorite_site" do
      FavoriteSite.stub(:new) { mock_favorite_site }
      get :new
      assigns(:favorite_site).should be(mock_favorite_site)
    end
  end

  describe "GET edit" do
    it "assigns the requested favorite_site as @favorite_site" do
      FavoriteSite.stub(:find).with("37") { mock_favorite_site }
      get :edit, :id => "37"
      assigns(:favorite_site).should be(mock_favorite_site)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created favorite_site as @favorite_site" do
        FavoriteSite.stub(:new).with({'these' => 'params'}) { mock_favorite_site(:save => true) }
        post :create, :favorite_site => {'these' => 'params'}
        assigns(:favorite_site).should be(mock_favorite_site)
      end

      it "redirects to the created favorite_site" do
        FavoriteSite.stub(:new) { mock_favorite_site(:save => true) }
        post :create, :favorite_site => {}
        response.should redirect_to(favorite_site_url(mock_favorite_site))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved favorite_site as @favorite_site" do
        FavoriteSite.stub(:new).with({'these' => 'params'}) { mock_favorite_site(:save => false) }
        post :create, :favorite_site => {'these' => 'params'}
        assigns(:favorite_site).should be(mock_favorite_site)
      end

      it "re-renders the 'new' template" do
        FavoriteSite.stub(:new) { mock_favorite_site(:save => false) }
        post :create, :favorite_site => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested favorite_site" do
        FavoriteSite.should_receive(:find).with("37") { mock_favorite_site }
        mock_favorite_site.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :favorite_site => {'these' => 'params'}
      end

      it "assigns the requested favorite_site as @favorite_site" do
        FavoriteSite.stub(:find) { mock_favorite_site(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:favorite_site).should be(mock_favorite_site)
      end

      it "redirects to the favorite_site" do
        FavoriteSite.stub(:find) { mock_favorite_site(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(favorite_site_url(mock_favorite_site))
      end
    end

    describe "with invalid params" do
      it "assigns the favorite_site as @favorite_site" do
        FavoriteSite.stub(:find) { mock_favorite_site(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:favorite_site).should be(mock_favorite_site)
      end

      it "re-renders the 'edit' template" do
        FavoriteSite.stub(:find) { mock_favorite_site(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested favorite_site" do
      FavoriteSite.should_receive(:find).with("37") { mock_favorite_site }
      mock_favorite_site.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the favorite_sites list" do
      FavoriteSite.stub(:find) { mock_favorite_site }
      delete :destroy, :id => "1"
      response.should redirect_to(favorite_sites_url)
    end
  end

end
