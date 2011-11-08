require 'spec_helper'

describe "favorite_sites/index.html.erb" do
  before(:each) do
    assign(:favorite_sites, [
      stub_model(FavoriteSite,
        :user_id => 1,
        :sitename => "Sitename",
        :url => "Url"
      ),
      stub_model(FavoriteSite,
        :user_id => 1,
        :sitename => "Sitename",
        :url => "Url"
      )
    ])
  end

  it "renders a list of favorite_sites" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Sitename".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
