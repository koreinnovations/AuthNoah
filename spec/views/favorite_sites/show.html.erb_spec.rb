require 'spec_helper'

describe "favorite_sites/show.html.erb" do
  before(:each) do
    @favorite_site = assign(:favorite_site, stub_model(FavoriteSite,
      :user_id => 1,
      :sitename => "Sitename",
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Sitename/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Url/)
  end
end
