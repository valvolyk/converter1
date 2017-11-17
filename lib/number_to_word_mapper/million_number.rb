module NumberToWordMapper
  class MillionNumber < AbstractNumber

    VALUE = 1000000

    def gender
      :male
    end

    def singular
      'миллион'
    end

    def first_plural
      'миллиона'
    end

    def second_plural
      'миллионов'
    end

  end
end
