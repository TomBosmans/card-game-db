require "rails_helper"

RSpec.describe ApplicationController, type: :controller do
  it "is an ActionController::Base" do
    expect(described_class.superclass).to eq(ActionController::Base)
  end
end
