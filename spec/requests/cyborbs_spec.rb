require 'rails_helper'

RSpec.describe "Cyborbs", type: :request do
  describe "GET /cyborbs" do
    it "works! (now write some real specs)" do
      get cyborbs_path
      expect(response).to have_http_status(200)
    end
  end
end
