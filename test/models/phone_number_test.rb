require 'test_helper'

class PhoneNumberTest < ActiveSupport::TestCase
  test "phone_number has number_type" do
    cell_phone = PhoneNumber.create(number: "8044948765", number_type: "cell")

    assert_equal "cell", cell_phone.number_type
  end

  test "will not accept outside number_type" do
    cell_phone = PhoneNumber.create(number: "8044948765", number_type: "flip")

    assert_equal false, cell_phone.valid? 
  end
end
