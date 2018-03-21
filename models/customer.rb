class Customer < ActiveRecord::Base
validates :firstname, presence: true
validates :lastname, presence: true
validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
validates :username, :presence => true, :uniqueness => true 
has_secure_password 
validates :firstname, length: { maximum: 30 }
has_many :tradein, primary_key: "id", foreign_key: "trader", dependent:  :destroy  

	def custname
		lastname + ", " + firstname
        

  # One customer may have many orders
  # Delete dependent orders when delete customer

   has_many :order, dependent:  :destroy
 
 
 has_many :review, dependent:  :destroy
 has_many :subscription, dependent:  :destroy

  
  end
end


