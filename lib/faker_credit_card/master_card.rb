module Faker
  module CreditCard
    class MasterCard
      extend Generator

      PREFIXES = ["51", "52", "53", "54", "55"]
      LENGTH   = 16

      def self.number(options = {})
        generate_number(PREFIXES.sample, LENGTH)
      end
    end
  end
end
