require "spec_helper"

describe AbPhonesController do
  describe "routing" do

    it "routes to #index" do
      get("/ab_phones").should route_to("ab_phones#index")
    end

    it "routes to #new" do
      get("/ab_phones/new").should route_to("ab_phones#new")
    end

    it "routes to #show" do
      get("/ab_phones/1").should route_to("ab_phones#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ab_phones/1/edit").should route_to("ab_phones#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ab_phones").should route_to("ab_phones#create")
    end

    it "routes to #update" do
      put("/ab_phones/1").should route_to("ab_phones#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ab_phones/1").should route_to("ab_phones#destroy", :id => "1")
    end

  end
end
