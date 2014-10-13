require 'spec_helper'

describe "ab_chapters/show" do
  before(:each) do
    @ab_chapter = assign(:ab_chapter, stub_model(AbChapter,
      :abmaster_id => 1,
      :chapter => "Chapter",
      :subchapter => "Subchapter"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Chapter/)
    rendered.should match(/Subchapter/)
  end
end
