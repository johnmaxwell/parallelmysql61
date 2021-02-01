require 'test_helper'

class UserTest < ActiveSupport::TestCase
  200.times do |i|
    test "test-case ##{i}: creates #{i} records" do
      i.times do
        User.create!(name: SecureRandom.alphanumeric(20))
      end
      assert_equal i, User.count
    end
  end
end
