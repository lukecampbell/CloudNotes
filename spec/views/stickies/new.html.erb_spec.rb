require 'spec_helper'

describe "stickies/new.html.erb" do
  before(:each) do
    assign(:sticky, stub_model(Sticky,
      :text => "MyText"
    ).as_new_record)
  end

  it "renders new sticky form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => stickies_path, :method => "post" do
      assert_select "textarea#sticky_text", :name => "sticky[text]"
    end
  end
end
