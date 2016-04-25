class CreateCleaningInvoices < ActiveRecord::Migration
  def change
    create_table :cleaning_invoices do |t|
      t.time :cleaning_time
      t.integer :rate
      t.boolean :paid
      t.integer :amount
      t.integer :tax
      t.integer :total_amount
      t.references :invoice, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
