class Account < ApplicationRecord
  has_many :deposits, class_name: "Transaction", foreign_key: "to_account_id"
  has_many :withdrawls, class_name: "Transaction", foreign_key: "from_account_id"
end
