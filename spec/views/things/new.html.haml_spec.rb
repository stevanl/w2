require 'spec_helper'

describe "things/new" do
  before(:each) do
    assign(:thing, stub_model(Thing,
      :name => "MyString",
      :description => "MyText",
      :price => "",
      :price => "",
      :category => "MyString",
      :sub_category => "MyString"
    ).as_new_record)
  end

  it "renders new thing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", things_path, "post" do
      assert_select "input#thing_name[name=?]", "thing[name]"
      assert_select "textarea#thing_description[name=?]", "thing[description]"
      assert_select "input#thing_price[name=?]", "thing[price]"
      assert_select "input#thing_price[name=?]", "thing[price]"
      assert_select "input#thing_category[name=?]", "thing[category]"
      assert_select "input#thing_sub_category[name=?]", "thing[sub_category]"
    end
  end
end
