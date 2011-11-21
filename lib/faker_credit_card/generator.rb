module Faker
  module CreditCard
    module Generator
      def generate_number(prefix, max_length)
        ccnum = prefix.to_s

        while ccnum.size < (max_length - 1)
          ccnum += Random.rand(10).to_s
        end

        sum = 0
        reversed_ccnum = ccnum.reverse

        reversed_ccnum.size.times.each do |index|
          if index.odd?
            sum += reversed_ccnum[index].to_i
          else
            double = reversed_ccnum[index].to_i * 2

            double.fdiv(10).to_s.split(".").each do |n|
              sum += n.to_i
            end
          end
        end

        mod = sum % 10
        check_digit = mod.zero? ? mod : (10 - mod)

        ccnum += check_digit.to_s
      end
    end
  end
end
