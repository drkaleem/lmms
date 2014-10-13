require 'spec_helper'

describe "ab_details/edit" do
  before(:each) do
    @ab_detail = assign(:ab_detail, stub_model(AbDetail,
      :abmaster_id => 1,
      :addressline1 => "MyString",
      :addressline2 => "MyString",
      :addressline3 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zipcode => 1,
      :country => "MyString",
      :invalid => false
    ))
  end

  it "renders the edit ab_detail form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ab_detail_path(@ab_detail), "post" do
      assert_select "input#ab_detail_abmaster_id[name=?]", "ab_detail[abmaster_id]"
      assert_select "input#ab_detail_addressline1[name=?]", "ab_detail[addressline1]"
      assert_select "input#ab_detail_addressline2[name=?]", "ab_detail[addressline2]"
      assert_select "input#ab_detail_addressline3[name=?]", "ab_detail[addressline3]"
      assert_select "input#ab_detail_city[name=?]", "ab_detail[city]"
      assert_select "input#ab_detail_state[name=?]", "ab_detail[state]"
      assert_select "input#ab_detail_zipcode[name=?]", "ab_detail[zipcode]"
      assert_select "input#ab_detail_country[name=?]", "ab_detail[country]"
      assert_select "input#ab_detail_invalid[name=?]", "ab_detail[invalid]"
    end
  end
end
