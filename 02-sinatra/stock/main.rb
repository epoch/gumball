require 'sinatra'
require 'yahoofinance'

get '/' do
  @stock_name = params[:stock_name]

  if @stock_name && !@stock_name.empty?
    result = YahooFinance::get_quotes(YahooFinance::StandardQuote, @stock_name)
    @price = result[@stock_name].lastTrade
  end
  
  erb :index
end