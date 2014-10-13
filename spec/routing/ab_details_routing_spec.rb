require "spec_helper"

describe AbDetailsController do
  describe "routing" do

    it "routes to #index" do
      get("/ab_details").should route_to("ab_details#index")
    end

    it "routes to #new" do
      get("/ab_details/new").should route_to("ab_details#new")
    end

    it "routes to #show" do
      get("/ab_details/1").should route_to("ab_details#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ab_details/1/edit").should route_to("ab_details#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ab_details").should route_to("ab_details#create")
    end

    it "routes to #update" do
      put("/ab_details/1").should route_to("ab_details#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ab_details/1").should route_to("ab_details#destroy", :id => "1")
    end

  end
end
