require "spec_helper"

describe PosicionamentosController do
  describe "routing" do

    it "routes to #index" do
      get("/posicionamentos").should route_to("posicionamentos#index")
    end

    it "routes to #new" do
      get("/posicionamentos/new").should route_to("posicionamentos#new")
    end

    it "routes to #show" do
      get("/posicionamentos/1").should route_to("posicionamentos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/posicionamentos/1/edit").should route_to("posicionamentos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/posicionamentos").should route_to("posicionamentos#create")
    end

    it "routes to #update" do
      put("/posicionamentos/1").should route_to("posicionamentos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/posicionamentos/1").should route_to("posicionamentos#destroy", :id => "1")
    end

  end
end
