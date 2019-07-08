require 'rails_helper'

RSpec.describe "Wizards", type: :request do
  describe "GET /wizards" do
    it "works! (now write some real specs)" do
      get wizards_path
      expect(response).to have_http_status(200)
    end
  end
end
