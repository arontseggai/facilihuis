class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  extend Enumerize

  enumerize :role, in: [:owner, :cleaner, :manager, :admin], default: :owner
end
