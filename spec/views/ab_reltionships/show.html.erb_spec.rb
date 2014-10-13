require 'spec_helper'

describe "ab_reltionships/show" do
  before(:each) do
    @ab_reltionship = assign(:ab_reltionship, stub_model(AbReltionship,
      :abmaster_id => 1,
      :relatedto_id => 2,
      :relationtype => "Relationtype"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/Relationtype/)
  end
end
