require 'spec_helper'

describe "ab_chapters/index" do
  before(:each) do
    assign(:ab_chapters, [
      stub_model(AbChapter,
        :abmaster_id => 1,
        :chapter => "Chapter",
        :subchapter => "Subchapter"
      ),
      stub_model(AbChapter,
        :abmaster_id => 1,
        :chapter => "Chapter",
        :subchapter => "Subchapter"
      )
    ])
  end

  it "renders a list of ab_chapters" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Chapter".to_s, :count => 2
    assert_select "tr>td", :text => "Subchapter".to_s, :count => 2
  end
end
