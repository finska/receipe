require 'test_helper'

class ChefTest < ActiveSupport::TestCase
  test "should be valid" do
    assert chefs(:one).valid?
    assert_not chefs(:name_minimum).valid?
    assert_not chefs(:name_maximum).valid?
    assert_not chefs(:email_not_valid).valid?
    assert_not chefs(:email_unique).valid?
    assert chefs(:email_uppcase).valid?
  end
  
  test "email should be lower case" do
    @email_with_uppcase = chefs(:email_uppcase).email
    assert_equal @email_with_uppcase.downcase!, @email_with_uppcase
  end
  
  test "should belongs to proper chef" do
    one   = recipes(:one).chef_id
    two   = recipes(:two).chef_id
    three = recipes(:three).chef_id
    assert_equal 1, one
    assert_equal 1, two
    assert_equal 2, three
  end
end
