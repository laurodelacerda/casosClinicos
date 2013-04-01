require "spec_helper"

describe PrevencaosController do
  describe "routing" do

    it "routes to #index" do
      get("/prevencaos").should route_to("prevencaos#index")
    end

    it "routes to #new" do
      get("/prevencaos/new").should route_to("prevencaos#new")
    end

    it "routes to #show" do
      get("/prevencaos/1").should route_to("prevencaos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/prevencaos/1/edit").should route_to("prevencaos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/prevencaos").should route_to("prevencaos#create")
    end

    it "routes to #update" do
      put("/prevencaos/1").should route_to("prevencaos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/prevencaos/1").should route_to("prevencaos#destroy", :id => "1")
    end

  end
end
