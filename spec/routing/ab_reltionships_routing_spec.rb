require "spec_helper"

describe AbReltionshipsController do
  describe "routing" do

    it "routes to #index" do
      get("/ab_reltionships").should route_to("ab_reltionships#index")
    end

    it "routes to #new" do
      get("/ab_reltionships/new").should route_to("ab_reltionships#new")
    end

    it "routes to #show" do
      get("/ab_reltionships/1").should route_to("ab_reltionships#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ab_reltionships/1/edit").should route_to("ab_reltionships#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ab_reltionships").should route_to("ab_reltionships#create")
    end

    it "routes to #update" do
      put("/ab_reltionships/1").should route_to("ab_reltionships#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ab_reltionships/1").should route_to("ab_reltionships#destroy", :id => "1")
    end

  end
end
