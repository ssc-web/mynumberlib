require "mynumberlib/version"

module Mynumberlib
  def self.is_valid_mynumber?(mynumber)
    mynumber = mynumber.to_s
    
    unless mynumber =~ /\A\d{12}\z/
      return false
    end

    sum_data = 0
    first, *rest = mynumber.chars.map(&:to_i).reverse

    rest.each_with_index do |pn, i|
      if i <= 5
        qn = i + 2
      else
        qn = i - 4
      end
      sum_data += pn*qn
    end

    sum_data = sum_data % 11
    if sum_data <= 1
      sum_data = 0
    else
      sum_data = 11 - sum_data
    end

    first.to_i == sum_data
  end
end

