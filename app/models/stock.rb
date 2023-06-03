class Stock < ApplicationRecord
  def self.new_lookup(ticker_symbol)
    client = Alphavantage::Client.new(key:Rails.application.credentials.alphavantage_client[:key])
    stock = client.stock(symbol: ticker_symbol)
    stock.quote.price
  end
end
