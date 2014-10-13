require 'spec_helper'

describe "AbReltionships" do
  describe "GET /ab_reltionships" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get ab_reltionships_path
      response.status.should be(200)
    end
  end
end
