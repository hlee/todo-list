require 'spec_helper'

describe "items/edit.html.haml" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :content => "MyString",
      :bg_status => 1,
      :priority => 1
    ))
  end

  it "renders the edit item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => items_path(@item), :method => "post" do
      assert_select "input#item_content", :name => "item[content]"
      assert_select "input#item_bg_status", :name => "item[bg_status]"
      assert_select "input#item_priority", :name => "item[priority]"
    end
  end
end
