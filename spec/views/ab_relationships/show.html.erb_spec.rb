require 'spec_helper'

describe "ab_relationships/show" do
  before(:each) do
    @ab_relationship = assign(:ab_relationship, stub_model(AbRelationship,
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
