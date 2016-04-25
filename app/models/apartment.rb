class Apartment < ActiveRecord::Base
  belongs_to :user
  has_many :invoices
  has_many :cleaning_invoices, :through :invoices
end
