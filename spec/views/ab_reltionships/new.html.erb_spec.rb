require 'spec_helper'

describe "ab_reltionships/new" do
  before(:each) do
    assign(:ab_reltionship, stub_model(AbReltionship,
      :abmaster_id => 1,
      :relatedto_id => 1,
      :relationtype => "MyString"
    ).as_new_record)
  end

  it "renders new ab_reltionship form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ab_reltionships_path, "post" do
      assert_select "input#ab_reltionship_abmaster_id[name=?]", "ab_reltionship[abmaster_id]"
      assert_select "input#ab_reltionship_relatedto_id[name=?]", "ab_reltionship[relatedto_id]"
      assert_select "input#ab_reltionship_relationtype[name=?]", "ab_reltionship[relationtype]"
    end
  end
end
