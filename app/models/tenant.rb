class Tenant < ApplicationRecord
    #check we have input for all fields
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :apartment, presence: true
    validates :phone, presence: true
    validates :email, presence: true
end
