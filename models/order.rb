class Order < ActiveRecord::Base
validates :customer_id, presence:true
validates :saledate, presence:true
#each order belongs to 1 customer 
belongs_to :customer 
end
