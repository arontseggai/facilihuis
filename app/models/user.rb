class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  extend Enumerize

  enumerize :role, in: [:owner, :cleaner, :manager, :admin], default: :owner

  has_many :apartments
  has_many :invoices, through: :apartments
  has_many :cleaning_invoices, through: :invoices, source: :apartments
end
