require 'spec_helper'

describe "items/new.html.haml" do
  before(:each) do
    assign(:item, stub_model(Item,
      :content => "MyString",
      :bg_status => 1,
      :priority => 1
    ).as_new_record)
  end

  it "renders new item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => items_path, :method => "post" do
      assert_select "input#item_content", :name => "item[content]"
      assert_select "input#item_bg_status", :name => "item[bg_status]"
      assert_select "input#item_priority", :name => "item[priority]"
    end
  end
end
