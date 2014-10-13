require "spec_helper"

describe AbMastersController do
  describe "routing" do

    it "routes to #index" do
      get("/ab_masters").should route_to("ab_masters#index")
    end

    it "routes to #new" do
      get("/ab_masters/new").should route_to("ab_masters#new")
    end

    it "routes to #show" do
      get("/ab_masters/1").should route_to("ab_masters#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ab_masters/1/edit").should route_to("ab_masters#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ab_masters").should route_to("ab_masters#create")
    end

    it "routes to #update" do
      put("/ab_masters/1").should route_to("ab_masters#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ab_masters/1").should route_to("ab_masters#destroy", :id => "1")
    end

  end
end
