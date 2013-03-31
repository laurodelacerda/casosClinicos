require "spec_helper"

describe TratamentosController do
  describe "routing" do

    it "routes to #index" do
      get("/tratamentos").should route_to("tratamentos#index")
    end

    it "routes to #new" do
      get("/tratamentos/new").should route_to("tratamentos#new")
    end

    it "routes to #show" do
      get("/tratamentos/1").should route_to("tratamentos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tratamentos/1/edit").should route_to("tratamentos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tratamentos").should route_to("tratamentos#create")
    end

    it "routes to #update" do
      put("/tratamentos/1").should route_to("tratamentos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tratamentos/1").should route_to("tratamentos#destroy", :id => "1")
    end

  end
end
