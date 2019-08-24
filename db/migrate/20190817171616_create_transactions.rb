class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.date :date
      t.string :payee
      t.string :note
      t.decimal :amount
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end
