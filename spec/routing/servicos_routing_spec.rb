require "spec_helper"

describe ServicosController do
  describe "routing" do

    it "routes to #index" do
      get("/servicos").should route_to("servicos#index")
    end

    it "routes to #new" do
      get("/servicos/new").should route_to("servicos#new")
    end

    it "routes to #show" do
      get("/servicos/1").should route_to("servicos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/servicos/1/edit").should route_to("servicos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/servicos").should route_to("servicos#create")
    end

    it "routes to #update" do
      put("/servicos/1").should route_to("servicos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/servicos/1").should route_to("servicos#destroy", :id => "1")
    end

  end
end
