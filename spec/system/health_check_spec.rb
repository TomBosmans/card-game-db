require "rails_helper"

RSpec.describe "Application smoke test", type: :system do
  before do
    driven_by :rack_test
  end

  it "shows the health check page" do
    visit rails_health_check_path
    expect(page).to have_http_status(:ok)
  end
end
