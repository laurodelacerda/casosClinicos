require "spec_helper"

describe DoencasintomasController do
  describe "routing" do

    it "routes to #index" do
      get("/doencasintomas").should route_to("doencasintomas#index")
    end

    it "routes to #new" do
      get("/doencasintomas/new").should route_to("doencasintomas#new")
    end

    it "routes to #show" do
      get("/doencasintomas/1").should route_to("doencasintomas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/doencasintomas/1/edit").should route_to("doencasintomas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/doencasintomas").should route_to("doencasintomas#create")
    end

    it "routes to #update" do
      put("/doencasintomas/1").should route_to("doencasintomas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/doencasintomas/1").should route_to("doencasintomas#destroy", :id => "1")
    end

  end
end
