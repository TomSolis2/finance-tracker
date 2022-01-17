class Stock < ApplicationRecord

    def self.new_lookup(ticker_symbol)
        client = IEX::Api::Client.new(publishable_token: Rails.application.credentials.iex_client[:sandbox_api_key],
                                      #secret_token: 'sk_b54fda6deede47d48d0ba405ec125683',
                                      endpoint: 'https://sandbox.iexapis.com/v1')
        client.price(ticker_symbol)
    end
end 