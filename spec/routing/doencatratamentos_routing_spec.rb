require "spec_helper"

describe DoencatratamentosController do
  describe "routing" do

    it "routes to #index" do
      get("/doencatratamentos").should route_to("doencatratamentos#index")
    end

    it "routes to #new" do
      get("/doencatratamentos/new").should route_to("doencatratamentos#new")
    end

    it "routes to #show" do
      get("/doencatratamentos/1").should route_to("doencatratamentos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/doencatratamentos/1/edit").should route_to("doencatratamentos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/doencatratamentos").should route_to("doencatratamentos#create")
    end

    it "routes to #update" do
      put("/doencatratamentos/1").should route_to("doencatratamentos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/doencatratamentos/1").should route_to("doencatratamentos#destroy", :id => "1")
    end

  end
end
