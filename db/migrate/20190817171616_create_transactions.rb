class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.date :date
      t.string :payee
      t.string :note
      t.decimal :amount
      t.references :to_account, foreign_key: {to_table: :accounts}, null: true
      t.references :from_account, foreign_key: {to_table: :accounts}, null: true

      t.timestamps
    end
  end
end
