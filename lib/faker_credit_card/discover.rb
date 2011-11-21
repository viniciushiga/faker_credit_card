module Faker
  module CreditCard
    class Discover
      extend Generator

      PREFIX = "6011"
      LENGTH = 16

      def self.number(options = {})
        generate_number(PREFIX, LENGTH)
      end
    end
  end
end
