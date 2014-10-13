require 'spec_helper'

describe "ab_emails/edit" do
  before(:each) do
    @ab_email = assign(:ab_email, stub_model(AbEmail,
      :abmaster_id => 1,
      :emailtype => "MyString",
      :emailid => "MyString",
      :preferred => false,
      :invalid => false
    ))
  end

  it "renders the edit ab_email form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ab_email_path(@ab_email), "post" do
      assert_select "input#ab_email_abmaster_id[name=?]", "ab_email[abmaster_id]"
      assert_select "input#ab_email_emailtype[name=?]", "ab_email[emailtype]"
      assert_select "input#ab_email_emailid[name=?]", "ab_email[emailid]"
      assert_select "input#ab_email_preferred[name=?]", "ab_email[preferred]"
      assert_select "input#ab_email_invalid[name=?]", "ab_email[invalid]"
    end
  end
end
