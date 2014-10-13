require 'spec_helper'

describe "ab_reltionships/edit" do
  before(:each) do
    @ab_reltionship = assign(:ab_reltionship, stub_model(AbReltionship,
      :abmaster_id => 1,
      :relatedto_id => 1,
      :relationtype => "MyString"
    ))
  end

  it "renders the edit ab_reltionship form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ab_reltionship_path(@ab_reltionship), "post" do
      assert_select "input#ab_reltionship_abmaster_id[name=?]", "ab_reltionship[abmaster_id]"
      assert_select "input#ab_reltionship_relatedto_id[name=?]", "ab_reltionship[relatedto_id]"
      assert_select "input#ab_reltionship_relationtype[name=?]", "ab_reltionship[relationtype]"
    end
  end
end
