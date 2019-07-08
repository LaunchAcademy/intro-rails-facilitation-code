require 'rails_helper'

RSpec.describe "Witches", type: :request do
  describe "GET /witches" do
    it "works! (now write some real specs)" do
      get witches_path
      expect(response).to have_http_status(200)
    end
  end
end
