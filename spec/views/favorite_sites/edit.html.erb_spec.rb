require 'spec_helper'

describe "favorite_sites/edit.html.erb" do
  before(:each) do
    @favorite_site = assign(:favorite_site, stub_model(FavoriteSite,
      :new_record? => false,
      :user_id => 1,
      :sitename => "MyString",
      :url => "MyString"
    ))
  end

  it "renders the edit favorite_site form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => favorite_site_path(@favorite_site), :method => "post" do
      assert_select "input#favorite_site_user_id", :name => "favorite_site[user_id]"
      assert_select "input#favorite_site_sitename", :name => "favorite_site[sitename]"
      assert_select "input#favorite_site_url", :name => "favorite_site[url]"
    end
  end
end
