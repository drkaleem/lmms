require "spec_helper"

describe AbRelationshipsController do
  describe "routing" do

    it "routes to #index" do
      get("/ab_relationships").should route_to("ab_relationships#index")
    end

    it "routes to #new" do
      get("/ab_relationships/new").should route_to("ab_relationships#new")
    end

    it "routes to #show" do
      get("/ab_relationships/1").should route_to("ab_relationships#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ab_relationships/1/edit").should route_to("ab_relationships#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ab_relationships").should route_to("ab_relationships#create")
    end

    it "routes to #update" do
      put("/ab_relationships/1").should route_to("ab_relationships#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ab_relationships/1").should route_to("ab_relationships#destroy", :id => "1")
    end

  end
end
