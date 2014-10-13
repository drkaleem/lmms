require 'spec_helper'

describe "ab_details/show" do
  before(:each) do
    @ab_detail = assign(:ab_detail, stub_model(AbDetail,
      :abmaster_id => 1,
      :addressline1 => "Addressline1",
      :addressline2 => "Addressline2",
      :addressline3 => "Addressline3",
      :city => "City",
      :state => "State",
      :zipcode => 2,
      :country => "Country",
      :invalid => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Addressline1/)
    rendered.should match(/Addressline2/)
    rendered.should match(/Addressline3/)
    rendered.should match(/City/)
    rendered.should match(/State/)
    rendered.should match(/2/)
    rendered.should match(/Country/)
    rendered.should match(/false/)
  end
end
