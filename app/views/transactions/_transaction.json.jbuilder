json.extract! transaction, :id, :date, :payee, :note, :amount, :to_account_id, :from_account_id, :created_at, :updated_at
json.url transaction_url(transaction, format: :json)
