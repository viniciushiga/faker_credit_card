module Faker
  module CreditCard
    class AmericanExpress
      extend Generator

      PREFIXES = ["34", "37"]
      LENGTH   = 15

      def self.number(options = {})
        generate_number(PREFIXES.sample, LENGTH)
      end
    end
  end
end
