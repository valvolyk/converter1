module NumberToWordMapper
  class ComplexMapper

    MAX_VALUE = 1000000000

    def initialize(number:, klasses: [], currency: nil)
      @number = number.to_i
      @klasses = klasses
      @currency = currency
    end

    def map
      return SimpleMapper.new.map(@number) if @klasses.empty?

      text = ''
      order_classes.each do |klass_of_numbers|
        next if @number < klass_of_numbers::VALUE

        amount = @number / klass_of_numbers::VALUE
        @number = @number % klass_of_numbers::VALUE

        instance_of_number = klass_of_numbers.new(amount)

        text += [
            SimpleMapper.new(instance_of_number.gender).map(amount),
            instance_of_number.word
        ].join(' ')
        text += ' '
      end

      if @number > 0
        currency = @currency.new(@number)
        text += SimpleMapper.new(currency.gender).map(@number)

        if @currency
          text = [text, currency.word].join(' ')
        end
      end

      text
    end

    private

    def order_classes
      @klasses.sort_by {|klass| klass::VALUE}.reverse
    end

  end
end
