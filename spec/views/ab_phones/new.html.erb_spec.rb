require 'spec_helper'

describe "ab_phones/new" do
  before(:each) do
    assign(:ab_phone, stub_model(AbPhone,
      :abmaster_id => 1,
      :phonetype => "MyString",
      :phonenum => 1,
      :preferred => false,
      :invalid => false
    ).as_new_record)
  end

  it "renders new ab_phone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ab_phones_path, "post" do
      assert_select "input#ab_phone_abmaster_id[name=?]", "ab_phone[abmaster_id]"
      assert_select "input#ab_phone_phonetype[name=?]", "ab_phone[phonetype]"
      assert_select "input#ab_phone_phonenum[name=?]", "ab_phone[phonenum]"
      assert_select "input#ab_phone_preferred[name=?]", "ab_phone[preferred]"
      assert_select "input#ab_phone_invalid[name=?]", "ab_phone[invalid]"
    end
  end
end
