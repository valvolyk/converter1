module NumberToWordMapper
  class AbstractNumber

    def initialize(value)
      @value = value.to_i
    end

    def word
      last_digit = @value.digits.first
      last_2_digits = @value.digits.reverse.last(2).join('').to_i

      if (11..20).include?(last_2_digits)
        second_plural
      else
        return singular if 1 == last_digit
        return first_plural if 1 < last_digit && last_digit < 5
        second_plural
      end
    end

    private

    def singular
      raise 'define me'
    end

    # 2 - 4 inclusively
    def first_plural
      raise 'define me'
    end

    def second_plural
      raise 'define me'
    end

  end
end
