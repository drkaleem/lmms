require 'spec_helper'

describe "ab_chapters/new" do
  before(:each) do
    assign(:ab_chapter, stub_model(AbChapter,
      :abmaster_id => 1,
      :chapter => "MyString",
      :subchapter => "MyString"
    ).as_new_record)
  end

  it "renders new ab_chapter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ab_chapters_path, "post" do
      assert_select "input#ab_chapter_abmaster_id[name=?]", "ab_chapter[abmaster_id]"
      assert_select "input#ab_chapter_chapter[name=?]", "ab_chapter[chapter]"
      assert_select "input#ab_chapter_subchapter[name=?]", "ab_chapter[subchapter]"
    end
  end
end
