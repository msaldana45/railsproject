class Product < ActiveRecord::Base
validates :productname, presence:true
validates :productimage, presence:true
validates :description, presence:true
validates :category_id, presence:true
validates :supplier_id, presence:true
validates :saleprice, presence:true
validates :status, presence:true
validates :purchaseprice, presence:true
validates :qtyonhand, presence:true
validates :reorderpoint, presence:true
validates :reorderqty, presence:true
end


