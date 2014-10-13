require 'spec_helper'

describe "ab_relationships/new" do
  before(:each) do
    assign(:ab_relationship, stub_model(AbRelationship,
      :abmaster_id => 1,
      :relatedto_id => 1,
      :relationtype => "MyString"
    ).as_new_record)
  end

  it "renders new ab_relationship form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ab_relationships_path, "post" do
      assert_select "input#ab_relationship_abmaster_id[name=?]", "ab_relationship[abmaster_id]"
      assert_select "input#ab_relationship_relatedto_id[name=?]", "ab_relationship[relatedto_id]"
      assert_select "input#ab_relationship_relationtype[name=?]", "ab_relationship[relationtype]"
    end
  end
end
