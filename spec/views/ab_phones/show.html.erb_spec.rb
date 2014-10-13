require 'spec_helper'

describe "ab_phones/show" do
  before(:each) do
    @ab_phone = assign(:ab_phone, stub_model(AbPhone,
      :abmaster_id => 1,
      :phonetype => "Phonetype",
      :phonenum => 2,
      :preferred => false,
      :invalid => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Phonetype/)
    rendered.should match(/2/)
    rendered.should match(/false/)
    rendered.should match(/false/)
  end
end
