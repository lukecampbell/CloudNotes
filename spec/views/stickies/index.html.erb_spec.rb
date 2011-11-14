require 'spec_helper'

describe "stickies/index.html.erb" do
  before(:each) do
    assign(:stickies, [
      stub_model(Sticky,
        :text => "MyText"
      ),
      stub_model(Sticky,
        :text => "MyText"
      )
    ])
  end

  it "renders a list of stickies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
