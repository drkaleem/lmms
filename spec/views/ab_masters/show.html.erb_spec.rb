require 'spec_helper'

describe "ab_masters/show" do
  before(:each) do
    @ab_master = assign(:ab_master, stub_model(AbMaster,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Salutation/)
    rendered.should match(/Firstname/)
    rendered.should match(/Middlename/)
    rendered.should match(/Lastname/)
    rendered.should match(/Addresstype/)
    rendered.should match(/Group/)
    rendered.should match(/Subgroup1/)
    rendered.should match(/Subgroup2/)
    rendered.should match(/false/)
    rendered.should match(/Status/)
  end
end
