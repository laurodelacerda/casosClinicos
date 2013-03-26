require "spec_helper"

describe TipodoencasController do
  describe "routing" do

    it "routes to #index" do
      get("/tipodoencas").should route_to("tipodoencas#index")
    end

    it "routes to #new" do
      get("/tipodoencas/new").should route_to("tipodoencas#new")
    end

    it "routes to #show" do
      get("/tipodoencas/1").should route_to("tipodoencas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tipodoencas/1/edit").should route_to("tipodoencas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tipodoencas").should route_to("tipodoencas#create")
    end

    it "routes to #update" do
      put("/tipodoencas/1").should route_to("tipodoencas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tipodoencas/1").should route_to("tipodoencas#destroy", :id => "1")
    end

  end
end
