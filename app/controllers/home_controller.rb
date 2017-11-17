class HomeController < ApplicationController

  def index
  end

  def convert
    return render status: 500 unless valid_number?
    render json: {text: mapper.map}
  end

  private

  def valid_number?
    params[:text].to_i > 0 && params[:text].to_i < NumberToWordMapper::ComplexMapper::MAX_VALUE
  end

  def mapper
    NumberToWordMapper::ComplexMapper.new(number: params[:text], klasses: [
        NumberToWordMapper::ThousandNumber,
        NumberToWordMapper::MillionNumber
    ], currency: NumberToWordMapper::Uah)
  end

end
