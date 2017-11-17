module NumberToWordMapper
  class Uah < AbstractNumber

    def gender
      :female
    end

    private
    def singular
      'гривна'
    end

    def first_plural
      'гривны'
    end

    def second_plural
      'гривен'
    end

  end
end
