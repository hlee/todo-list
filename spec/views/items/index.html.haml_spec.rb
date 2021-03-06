require 'spec_helper'

describe "items/index.html.haml" do
  before(:each) do
    assign(:items, [
      stub_model(Item,
        :content => "Content",
        :bg_status => 1,
        :priority => 1
      ),
      stub_model(Item,
        :content => "Content",
        :bg_status => 1,
        :priority => 1
      )
    ])
  end

  it "renders a list of items" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
