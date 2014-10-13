require 'spec_helper'

describe "ab_emails/show" do
  before(:each) do
    @ab_email = assign(:ab_email, stub_model(AbEmail,
      :abmaster_id => 1,
      :emailtype => "Emailtype",
      :emailid => "Emailid",
      :preferred => false,
      :invalid => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Emailtype/)
    rendered.should match(/Emailid/)
    rendered.should match(/false/)
    rendered.should match(/false/)
  end
end
