require 'spec_helper'

describe "ab_masters/edit" do
  before(:each) do
    @ab_master = assign(:ab_master, stub_model(AbMaster,
      :membercode => 1,
      :salutation => "MyString",
      :firstname => "MyString",
      :middlename => "MyString",
      :lastname => "MyString",
      :addresstype => "MyString",
      :group => "MyString",
      :subgroup1 => "MyString",
      :subgroup2 => "MyString",
      :inactive => false,
      :status => "MyString"
    ))
  end

  it "renders the edit ab_master form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ab_master_path(@ab_master), "post" do
      assert_select "input#ab_master_membercode[name=?]", "ab_master[membercode]"
      assert_select "input#ab_master_salutation[name=?]", "ab_master[salutation]"
      assert_select "input#ab_master_firstname[name=?]", "ab_master[firstname]"
      assert_select "input#ab_master_middlename[name=?]", "ab_master[middlename]"
      assert_select "input#ab_master_lastname[name=?]", "ab_master[lastname]"
      assert_select "input#ab_master_addresstype[name=?]", "ab_master[addresstype]"
      assert_select "input#ab_master_group[name=?]", "ab_master[group]"
      assert_select "input#ab_master_subgroup1[name=?]", "ab_master[subgroup1]"
      assert_select "input#ab_master_subgroup2[name=?]", "ab_master[subgroup2]"
      assert_select "input#ab_master_inactive[name=?]", "ab_master[inactive]"
      assert_select "input#ab_master_status[name=?]", "ab_master[status]"
    end
  end
end
