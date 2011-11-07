require 'spec_helper'

describe "items/show.html.haml" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :content => "Content",
      :bg_status => 1,
      :priority => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Content/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
