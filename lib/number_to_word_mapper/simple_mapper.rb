module NumberToWordMapper
  class SimpleMapper

    def initialize(gender = nil)
      @gender = gender
    end

    HUNDRED_WORDS = {
        9 => 'девятьсот',
        8 => 'восемьсот',
        7 => 'семьсот',
        6 => 'шестьсот',
        5 => 'пятьсот',
        4 => 'четыреста',
        3 => 'триста',
        2 => 'двести',
        1 => 'сто'
    }.freeze

    WORDS = {
      90 => 'девяносто',
      80 => 'восемьдесят',
      70 => 'семьдесят',
      60 => 'шестьдесят',
      50 => 'пятьдесят',
      40 => 'сорок',
      30 => 'тридцать',
      20 => 'двадцать',
      19 => 'девятнадцать',
      18 => 'восемнадцать',
      17 => 'семнадцать',
      16 => 'шестнадцать',
      15 => 'пятнадцать',
      14 => 'четырнадцать',
      13 => 'тринадцать',
      12 => 'двенадцать',
      11 => 'одиннадцать',
      10 => 'десять',
      9  => 'девять',
      8  => 'восемь',
      7  => 'семь',
      6  => 'шесть',
      5  => 'пять',
      4  => 'четыре',
      3  => 'три',
      2  => 'два',
      1  => 'один',
    }.freeze

    def map(number)
      if WORDS.has_key?(number)
        words(number)
      elsif (100..1000).include?(number)
        three_digit_number_to_word(number)
      else
        two_digit_number_to_word(number)
      end
    end

    private

    def female?
      @gender == :female
    end

    def words(key)
      female_words = WORDS.merge({1 => 'одна', 2 => 'две'})
      female? ? female_words[key] : WORDS[key]
    end

    def three_digit_number_to_word(number)
      [ HUNDRED_WORDS[hundreds(number)], words(dozens(number)), words(units(number)) ].join(' ').strip
    end

    def two_digit_number_to_word(number)
      [ words(number - units(number)), words(units(number))].join(' ')
    end

    def hundreds(number)
      number / 100
    end

    def dozens(number)
      number - ((number / 100) * 100) - units(number)
    end

    def units(number)
      number % 10
    end

  end
end
