json.extract! portfolio, :id, :ticker, :amount, :created_at, :updated_at
json.url portfolio_url(portfolio, format: :json)
