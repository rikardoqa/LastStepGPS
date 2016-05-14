require "spec_helper"

describe FavoritosController do
  describe "routing" do

    it "routes to #index" do
      get("/favoritos").should route_to("favoritos#index")
    end

    it "routes to #new" do
      get("/favoritos/new").should route_to("favoritos#new")
    end

    it "routes to #show" do
      get("/favoritos/1").should route_to("favoritos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/favoritos/1/edit").should route_to("favoritos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/favoritos").should route_to("favoritos#create")
    end

    it "routes to #update" do
      put("/favoritos/1").should route_to("favoritos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/favoritos/1").should route_to("favoritos#destroy", :id => "1")
    end

  end
end
