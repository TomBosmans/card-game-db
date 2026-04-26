require "rails_helper"

RSpec.describe ApplicationJob, type: :job do
  it "is an ActiveJob::Base" do
    expect(described_class.superclass).to eq(ActiveJob::Base)
  end
end
