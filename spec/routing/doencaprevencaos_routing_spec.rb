require "spec_helper"

describe DoencaprevencaosController do
  describe "routing" do

    it "routes to #index" do
      get("/doencaprevencaos").should route_to("doencaprevencaos#index")
    end

    it "routes to #new" do
      get("/doencaprevencaos/new").should route_to("doencaprevencaos#new")
    end

    it "routes to #show" do
      get("/doencaprevencaos/1").should route_to("doencaprevencaos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/doencaprevencaos/1/edit").should route_to("doencaprevencaos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/doencaprevencaos").should route_to("doencaprevencaos#create")
    end

    it "routes to #update" do
      put("/doencaprevencaos/1").should route_to("doencaprevencaos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/doencaprevencaos/1").should route_to("doencaprevencaos#destroy", :id => "1")
    end

  end
end
