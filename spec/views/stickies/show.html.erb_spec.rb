require 'spec_helper'

describe "stickies/show.html.erb" do
  before(:each) do
    @sticky = assign(:sticky, stub_model(Sticky,
      :text => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
