require "spec_helper"

describe TipotratamentosController do
  describe "routing" do

    it "routes to #index" do
      get("/tipotratamentos").should route_to("tipotratamentos#index")
    end

    it "routes to #new" do
      get("/tipotratamentos/new").should route_to("tipotratamentos#new")
    end

    it "routes to #show" do
      get("/tipotratamentos/1").should route_to("tipotratamentos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tipotratamentos/1/edit").should route_to("tipotratamentos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tipotratamentos").should route_to("tipotratamentos#create")
    end

    it "routes to #update" do
      put("/tipotratamentos/1").should route_to("tipotratamentos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tipotratamentos/1").should route_to("tipotratamentos#destroy", :id => "1")
    end

  end
end
