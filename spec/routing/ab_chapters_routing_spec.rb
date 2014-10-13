require "spec_helper"

describe AbChaptersController do
  describe "routing" do

    it "routes to #index" do
      get("/ab_chapters").should route_to("ab_chapters#index")
    end

    it "routes to #new" do
      get("/ab_chapters/new").should route_to("ab_chapters#new")
    end

    it "routes to #show" do
      get("/ab_chapters/1").should route_to("ab_chapters#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ab_chapters/1/edit").should route_to("ab_chapters#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ab_chapters").should route_to("ab_chapters#create")
    end

    it "routes to #update" do
      put("/ab_chapters/1").should route_to("ab_chapters#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ab_chapters/1").should route_to("ab_chapters#destroy", :id => "1")
    end

  end
end
