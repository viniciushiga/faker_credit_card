module Faker
  module CreditCard
    class DinersClub
      extend Generator

      PREFIXES = ["300", "301", "302", "303", "304", "305", "36", "38"]
      LENGTH   = 14

      def self.number(options = {})
        generate_number(PREFIXES.sample, LENGTH)
      end
    end
  end
end
