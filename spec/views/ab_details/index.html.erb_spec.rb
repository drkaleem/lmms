require 'spec_helper'

describe "ab_details/index" do
  before(:each) do
    assign(:ab_details, [
      stub_model(AbDetail,
        :abmaster_id => 1,
        :addressline1 => "Addressline1",
        :addressline2 => "Addressline2",
        :addressline3 => "Addressline3",
        :city => "City",
        :state => "State",
        :zipcode => 2,
        :country => "Country",
        :invalid => false
      ),
      stub_model(AbDetail,
        :abmaster_id => 1,
        :addressline1 => "Addressline1",
        :addressline2 => "Addressline2",
        :addressline3 => "Addressline3",
        :city => "City",
        :state => "State",
        :zipcode => 2,
        :country => "Country",
        :invalid => false
      )
    ])
  end

  it "renders a list of ab_details" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Addressline1".to_s, :count => 2
    assert_select "tr>td", :text => "Addressline2".to_s, :count => 2
    assert_select "tr>td", :text => "Addressline3".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
