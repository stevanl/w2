require 'spec_helper'

describe "things/edit" do
  before(:each) do
    @thing = assign(:thing, stub_model(Thing,
      :name => "MyString",
      :description => "MyText",
      :price => "",
      :price => "",
      :category => "MyString",
      :sub_category => "MyString"
    ))
  end

  it "renders the edit thing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", thing_path(@thing), "post" do
      assert_select "input#thing_name[name=?]", "thing[name]"
      assert_select "textarea#thing_description[name=?]", "thing[description]"
      assert_select "input#thing_price[name=?]", "thing[price]"
      assert_select "input#thing_price[name=?]", "thing[price]"
      assert_select "input#thing_category[name=?]", "thing[category]"
      assert_select "input#thing_sub_category[name=?]", "thing[sub_category]"
    end
  end
end
