require 'spec_helper'

describe "ab_relationships/index" do
  before(:each) do
    assign(:ab_relationships, [
      stub_model(AbRelationship,
        :abmaster_id => 1,
        :relatedto_id => 2,
        :relationtype => "Relationtype"
      ),
      stub_model(AbRelationship,
        :abmaster_id => 1,
        :relatedto_id => 2,
        :relationtype => "Relationtype"
      )
    ])
  end

  it "renders a list of ab_relationships" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Relationtype".to_s, :count => 2
  end
end
