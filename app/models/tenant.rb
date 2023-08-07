class Tenant < ApplicationRecord
    #check we have input for all fields, phone and email in particular
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :apartment, presence: true
    validates :phone, presence: true, length: { minimum: 10, maximum: 10 }
    validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }

end
