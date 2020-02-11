class Account < ApplicationRecord
  has_many :deposits, class_name: "Transaction", foreign_key: "to_account_id"
  has_many :withdrawals, class_name: "Transaction", foreign_key: "from_account_id"

  def balance
    # deposits
    deposits = self.deposits.sum("amount")
    puts("deposits: #{deposits}")
    # withdrawals
    withdrawals = self.withdrawals.sum("amount")
    puts("withdrawals: #{withdrawals}")
    # balance
    return deposits - withdrawals
  end
end
