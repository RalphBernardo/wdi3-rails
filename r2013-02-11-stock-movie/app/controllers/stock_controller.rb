class StockController < ApplicationController

  def index
  end

  def get_quote
    if params[:symbol].present?
      @symbol = params[:symbol].upcase
      @quote = YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)[@symbol].lastTrade
    end
  end
end