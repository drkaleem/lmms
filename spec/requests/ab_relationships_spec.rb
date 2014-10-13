require 'spec_helper'

describe "AbRelationships" do
  describe "GET /ab_relationships" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get ab_relationships_path
      response.status.should be(200)
    end
  end
end
