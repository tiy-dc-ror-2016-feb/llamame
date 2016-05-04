require "rails_helper"

# Specs in this file have access to a helper object that includes
# the ApplicationHelper. For example:
#
# describe ApplicationHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ApplicationHelper, type: :helper do
  describe "when calling icon_type" do
    it "returns an icon that matches the argument" do
      expect(helper.icon_type("email")).to include("envelope")
    end

    it "returns an icon when given a symbol" do
      expect(helper.icon_type(:phone)).to include("phone")
    end

    it "will have a default if nil is passed" do
      expect(helper.icon_type(nil)).to include("question")
    end

    it "will have a default if unrecognized is passed" do
      expect(helper.icon_type(:star)).to include("question")
    end
  end
end
