require 'test_helper'

class InteractionTest < ActiveSupport::TestCase

  test "interaction medium can be through email" do
    email_interaction = Interaction.create(topic: "2020 Llama Suppliers", medium: "email")

    assert_equal({}, email_interaction.errors.messages)
    assert_equal true, email_interaction.valid?
  end

  test "interaction medium can only be through phone" do
    phone_interaction = Interaction.create(topic: "Llama Sales Forecasts", medium: "phone")

    assert_equal({}, phone_interaction.errors.messages)
    assert_equal true, phone_interaction.valid?
  end

  test "interaction medium can be in-person" do
    person_interaction = Interaction.create(topic: "Improving Llama Welfare", medium: "in_person")

    assert_equal({}, person_interaction.errors.messages)
    assert_equal true, person_interaction.valid?
  end

  test "interaction medium cannot be anything other than email, phone, or in-person" do
    other_interaction = Interaction.create(topic: "Improving Llama Welfare", medium: "telepathy")

    assert_equal false, other_interaction.valid?
  end

end
