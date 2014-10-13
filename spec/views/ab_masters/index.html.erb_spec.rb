require 'spec_helper'

describe "ab_masters/index" do
  before(:each) do
    assign(:ab_masters, [
      stub_model(AbMaster,
        :membercode => 1,
        :salutation => "Salutation",
        :firstname => "Firstname",
        :middlename => "Middlename",
        :lastname => "Lastname",
        :addresstype => "Addresstype",
        :group => "Group",
        :subgroup1 => "Subgroup1",
        :subgroup2 => "Subgroup2",
        :inactive => false,
        :status => "Status"
      ),
      stub_model(AbMaster,
        :membercode => 1,
        :salutation => "Salutation",
        :firstname => "Firstname",
        :middlename => "Middlename",
        :lastname => "Lastname",
        :addresstype => "Addresstype",
        :group => "Group",
        :subgroup1 => "Subgroup1",
        :subgroup2 => "Subgroup2",
        :inactive => false,
        :status => "Status"
      )
    ])
  end

  it "renders a list of ab_masters" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Salutation".to_s, :count => 2
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Middlename".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Addresstype".to_s, :count => 2
    assert_select "tr>td", :text => "Group".to_s, :count => 2
    assert_select "tr>td", :text => "Subgroup1".to_s, :count => 2
    assert_select "tr>td", :text => "Subgroup2".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
