require "rails_helper"

RSpec.describe CyborbsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/cyborbs").to route_to("cyborbs#index")
    end

    it "routes to #new" do
      expect(:get => "/cyborbs/new").to route_to("cyborbs#new")
    end

    it "routes to #show" do
      expect(:get => "/cyborbs/1").to route_to("cyborbs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/cyborbs/1/edit").to route_to("cyborbs#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/cyborbs").to route_to("cyborbs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/cyborbs/1").to route_to("cyborbs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/cyborbs/1").to route_to("cyborbs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/cyborbs/1").to route_to("cyborbs#destroy", :id => "1")
    end
  end
end
