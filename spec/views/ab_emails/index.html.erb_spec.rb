require 'spec_helper'

describe "ab_emails/index" do
  before(:each) do
    assign(:ab_emails, [
      stub_model(AbEmail,
        :abmaster_id => 1,
        :emailtype => "Emailtype",
        :emailid => "Emailid",
        :preferred => false,
        :invalid => false
      ),
      stub_model(AbEmail,
        :abmaster_id => 1,
        :emailtype => "Emailtype",
        :emailid => "Emailid",
        :preferred => false,
        :invalid => false
      )
    ])
  end

  it "renders a list of ab_emails" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Emailtype".to_s, :count => 2
    assert_select "tr>td", :text => "Emailid".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
