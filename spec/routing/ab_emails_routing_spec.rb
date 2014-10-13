require "spec_helper"

describe AbEmailsController do
  describe "routing" do

    it "routes to #index" do
      get("/ab_emails").should route_to("ab_emails#index")
    end

    it "routes to #new" do
      get("/ab_emails/new").should route_to("ab_emails#new")
    end

    it "routes to #show" do
      get("/ab_emails/1").should route_to("ab_emails#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ab_emails/1/edit").should route_to("ab_emails#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ab_emails").should route_to("ab_emails#create")
    end

    it "routes to #update" do
      put("/ab_emails/1").should route_to("ab_emails#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ab_emails/1").should route_to("ab_emails#destroy", :id => "1")
    end

  end
end
