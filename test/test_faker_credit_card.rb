require File.dirname(__FILE__) + '/test_helper.rb'

class TestFakerCreditCard < Test::Unit::TestCase
  include CreditCardNumberValidator

  def test_american_express
    number = Faker::CreditCard.number(:american_express)
    assert_not_nil number
    assert_equal number.size, 15
    assert valid_credit_card?(number)
  end

  def test_dinners_club
    number = Faker::CreditCard.number(:dinners_club)
    assert_not_nil number
    assert_equal number.size, 14
    assert valid_credit_card?(number)
  end

  def test_discover
    number = Faker::CreditCard.number(:discover)
    assert_not_nil number
    assert_equal number.size, 16
    assert valid_credit_card?(number)
  end

  def test_master_card
    number = Faker::CreditCard.number(:master_card)
    assert_not_nil number
    assert_equal number.size, 16
    assert valid_credit_card?(number)
  end

  def test_visa
    number = Faker::CreditCard.number(:visa)
    assert_not_nil number
    assert valid_credit_card?(number)

    number = Faker::CreditCard.number(:visa, length: 13)
    assert_not_nil number
    assert_equal number.size, 13
    assert valid_credit_card?(number)

    number = Faker::CreditCard.number(:visa, length: 16)
    assert_not_nil number
    assert_equal number.size, 16
    assert valid_credit_card?(number)

    assert_raise RuntimeError do
      Faker::CreditCard.number(:visa, length: 20)
    end
  end
end
