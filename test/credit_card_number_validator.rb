module CreditCardNumberValidator
  def valid_credit_card?(number)
    return false unless valid_association?(number)

    reversed_ccnum = number.reverse
    relative_number = {'0' => 0, '1' => 2, '2' => 4, '3' => 6, '4' => 8, '5' => 1, '6' => 3, '7' => 5, '8' => 7, '9' => 9}
    sum = 0

    reversed_ccnum.split("").each_with_index do |n, i|
      sum += (i % 2 == 0) ? n.to_i : relative_number[n]
    end

    sum % 10 == 0
  end

  def valid_association?(number)
    ccnum = number.to_s.gsub(/\D/, "")

    return :diners  if ccnum.length == 14 && ccnum =~ /^3(0[0-5]|[68])/   # 300xxx-305xxx, 36xxxx, 38xxxx
    return :amex     if ccnum.length == 15 && ccnum =~ /^3[47]/            # 34xxxx, 37xxxx
    return :visa     if [13,16].include?(ccnum.length) && ccnum =~ /^4/    # 4xxxxx
    return :master   if ccnum.length == 16 && ccnum =~ /^5[1-5]/           # 51xxxx-55xxxx
    return :discover if ccnum.length == 16 && ccnum =~ /^6011/             # 6011xx
    return nil
  end
end
