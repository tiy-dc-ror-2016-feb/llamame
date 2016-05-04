require "rails_helper"

RSpec.describe Email, type: :model do
  subject { Email.new(email: "lol@trollloolllolllo.com") }

  it { expect(subject.email).to include("@") }
end
