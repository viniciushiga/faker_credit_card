require "faker_credit_card/generator"
require "faker_credit_card/american_express"
require "faker_credit_card/dinners_club"
require "faker_credit_card/discover"
require "faker_credit_card/master_card"
require "faker_credit_card/visa"

require "faker_credit_card/version"

module Faker
  module CreditCard
    def self.number(type, options = {})
      case type
      when :american_express then AmericanExpress.number(options)
      when :dinners_club     then DinnersClub.number(options)
      when :discover         then Discover.number(options)
      when :master_card      then MasterCard.number(options)
      when :visa             then Visa.number(options)
      end
    end
  end
end
