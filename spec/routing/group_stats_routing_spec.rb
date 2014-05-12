require "spec_helper"

describe GroupStatsController do
  describe "routing" do

    it "routes to #index" do
      get("/group_stats").should route_to("group_stats#index")
    end

    it "routes to #new" do
      get("/group_stats/new").should route_to("group_stats#new")
    end

    it "routes to #show" do
      get("/group_stats/1").should route_to("group_stats#show", :id => "1")
    end

    it "routes to #edit" do
      get("/group_stats/1/edit").should route_to("group_stats#edit", :id => "1")
    end

    it "routes to #create" do
      post("/group_stats").should route_to("group_stats#create")
    end

    it "routes to #update" do
      put("/group_stats/1").should route_to("group_stats#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/group_stats/1").should route_to("group_stats#destroy", :id => "1")
    end

  end
end
