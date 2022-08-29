class User < ApplicationRecord
    has_many :reservations
    devise :database_authenticatable, :registerable, :recoverable, stretches: 13

    # validates :email, uniqueness: true
end
