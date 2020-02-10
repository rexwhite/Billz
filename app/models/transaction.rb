class Transaction < ApplicationRecord
  belongs_to :to_account, class_name: "Account", optional: true
  belongs_to :from_account, class_name: "Account", optional: true
end
