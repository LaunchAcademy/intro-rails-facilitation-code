require "rails_helper"

RSpec.describe WitchesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/witches").to route_to("witches#index")
    end

    it "routes to #new" do
      expect(:get => "/witches/new").to route_to("witches#new")
    end

    it "routes to #show" do
      expect(:get => "/witches/1").to route_to("witches#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/witches/1/edit").to route_to("witches#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/witches").to route_to("witches#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/witches/1").to route_to("witches#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/witches/1").to route_to("witches#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/witches/1").to route_to("witches#destroy", :id => "1")
    end
  end
end
