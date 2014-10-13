require 'spec_helper'

describe "ab_phones/index" do
  before(:each) do
    assign(:ab_phones, [
      stub_model(AbPhone,
        :abmaster_id => 1,
        :phonetype => "Phonetype",
        :phonenum => 2,
        :preferred => false,
        :invalid => false
      ),
      stub_model(AbPhone,
        :abmaster_id => 1,
        :phonetype => "Phonetype",
        :phonenum => 2,
        :preferred => false,
        :invalid => false
      )
    ])
  end

  it "renders a list of ab_phones" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Phonetype".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
