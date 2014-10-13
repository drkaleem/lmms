require 'spec_helper'

describe "ab_chapters/edit" do
  before(:each) do
    @ab_chapter = assign(:ab_chapter, stub_model(AbChapter,
      :abmaster_id => 1,
      :chapter => "MyString",
      :subchapter => "MyString"
    ))
  end

  it "renders the edit ab_chapter form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ab_chapter_path(@ab_chapter), "post" do
      assert_select "input#ab_chapter_abmaster_id[name=?]", "ab_chapter[abmaster_id]"
      assert_select "input#ab_chapter_chapter[name=?]", "ab_chapter[chapter]"
      assert_select "input#ab_chapter_subchapter[name=?]", "ab_chapter[subchapter]"
    end
  end
end
