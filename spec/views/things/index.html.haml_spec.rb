require 'spec_helper'

describe "things/index" do
  before(:each) do
    assign(:things, [
      stub_model(Thing,
        :name => "Name",
        :description => "MyText",
        :price => "",
        :price => "",
        :category => "Category",
        :sub_category => "Sub Category"
      ),
      stub_model(Thing,
        :name => "Name",
        :description => "MyText",
        :price => "",
        :price => "",
        :category => "Category",
        :sub_category => "Sub Category"
      )
    ])
  end

  it "renders a list of things" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Sub Category".to_s, :count => 2
  end
end
