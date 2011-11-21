module Faker
  module CreditCard
    class Visa
      extend Generator

      PREFIX  = "4"
      LENGTHS = [13, 16]

      def self.number(options = {})
        length = options.fetch(:length, LENGTHS.sample)
        fail "visa credit card can't have #{length} digits" unless LENGTHS.member? length
        generate_number(PREFIX, length)
      end
    end
  end
end
