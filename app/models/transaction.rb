class Transaction < ApplicationRecord
  belongs_to :to_account, class_name: "Account", optional: true
  belongs_to :from_account, class_name: "Account", optional: true

  # validations
  validates :date, presence: true
  validates :amount, presence: true

  validates :to_account_id, presence: {message: "Either to_account_id or from_account_id must be specified"} unless :from_account_id
  validates :from_account_id, presence: {message: "Either to_account_id or from_account_id must be specified"} unless :to_account_id

  validates_associated :to_account
  validates_associated :from_account

 end
