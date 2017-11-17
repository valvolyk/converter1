module NumberToWordMapper
  class ThousandNumber < AbstractNumber

    VALUE = 1000

    def gender
      :female
    end

    def singular
      'тысяча'
    end

    def first_plural
      'тысячи'
    end

    def second_plural
      'тысяч'
    end

  end
end
