require 'spec_helper'

describe "stickies/edit.html.erb" do
  before(:each) do
    @sticky = assign(:sticky, stub_model(Sticky,
      :text => "MyText"
    ))
  end

  it "renders the edit sticky form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => stickies_path(@sticky), :method => "post" do
      assert_select "textarea#sticky_text", :name => "sticky[text]"
    end
  end
end
