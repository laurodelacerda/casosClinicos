require "spec_helper"

describe SintomasController do
  describe "routing" do

    it "routes to #index" do
      get("/sintomas").should route_to("sintomas#index")
    end

    it "routes to #new" do
      get("/sintomas/new").should route_to("sintomas#new")
    end

    it "routes to #show" do
      get("/sintomas/1").should route_to("sintomas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sintomas/1/edit").should route_to("sintomas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sintomas").should route_to("sintomas#create")
    end

    it "routes to #update" do
      put("/sintomas/1").should route_to("sintomas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sintomas/1").should route_to("sintomas#destroy", :id => "1")
    end

  end
end
