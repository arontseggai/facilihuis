class Invoice < ActiveRecord::Base
  belongs_to :apartment
  has_many :cleaning_invoices
end
