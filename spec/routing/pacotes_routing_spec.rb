require "spec_helper"

describe PacotesController do
  describe "routing" do

    it "routes to #index" do
      get("/pacotes").should route_to("pacotes#index")
    end

    it "routes to #new" do
      get("/pacotes/new").should route_to("pacotes#new")
    end

    it "routes to #show" do
      get("/pacotes/1").should route_to("pacotes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pacotes/1/edit").should route_to("pacotes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pacotes").should route_to("pacotes#create")
    end

    it "routes to #update" do
      put("/pacotes/1").should route_to("pacotes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pacotes/1").should route_to("pacotes#destroy", :id => "1")
    end

  end
end
