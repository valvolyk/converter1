describe NumberToWordMapper::ComplexMapper do

  describe 'complex_mapper#map' do

    it 'simple#map' do
      text = NumberToWordMapper::ComplexMapper.new(number: 134, klasses: [NumberToWordMapper::ThousandNumber, NumberToWordMapper::MillionNumber], currency: NumberToWordMapper::Uah).map
      expect(text).to eq 'сто тридцать четыре гривны'
    end

    it 'thousand#map' do
      text = NumberToWordMapper::ComplexMapper.new(number: 125678, klasses: [NumberToWordMapper::ThousandNumber, NumberToWordMapper::MillionNumber], currency: NumberToWordMapper::Uah).map
      expect(text).to eq 'сто двадцать пять тысяч шестьсот семьдесят восемь гривен'
    end

    it 'million#map' do
      text = NumberToWordMapper::ComplexMapper.new(number: 987654321, klasses: [NumberToWordMapper::ThousandNumber, NumberToWordMapper::MillionNumber], currency: NumberToWordMapper::Uah).map
      expect(text).to eq 'девятьсот восемьдесят семь миллионов шестьсот пятьдесят четыре тысячи триста двадцать одна гривна'
    end

  end

end