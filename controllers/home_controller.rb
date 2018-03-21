class HomeController < ApplicationController
 skip_before_filter :authorize

  def index
	@promotions = Promotion.where("startdate <= ? AND enddate >= ?",  Date.today, Date.today)
  end

  def about
  end

  def cart
  end

  def checkout
 	cartlen = session[:cart_prod].length
	i=0
	if cartlen > 0
	 # Save new record in Order table
	 # Customer ID, Sale Date and Sale Notes
	 orderid = Order.create(customer_id: session[:user_id], saledate: Date.today, salenotes: session[:cart_prod].to_s)
	# For each item in the shopping cart save the record in the in OrderItem table
	while i < cartlen
        OrderItem.create(order_id: orderid.id, product_id: session[:cart_prod][i].to_i, saleprice: Product.find(session[:cart_prod][i].to_i).saleprice, prodqty: session[:cart_qty][i])
		i = i + 1
	end 
  	# Set session cart arrays to nil. 
	  session[:cart_prod] = Array.new
	  session[:cart_qty] = Array.new
	end
end

  
  
  def updatecart
 	# Get the specific item that needs to be removed
	cartid = params[:cartid].to_i;
  
	 # Remove the specific element that is desired to be removed from the array.
	session[:cart_prod].delete_at(cartid)
	session[:cart_qty].delete_at(cartid)
  
  	# Redirect to display cart (shopping cart)
	redirect_to cart_url
  end

  
  def buy
    # Get the specific product selected to be purchased and the quantity.
	# Converting the value to integer using the to_i method
	@prodid = params[:prodid].to_i;
	@qty = params[:qty].to_i;
	
	# Set session cart arrays to nil. 
	session[:cart_prod] << @prodid
	session[:cart_qty] << @qty

	# Redirect to display cart (shopping cart)
	redirect_to cart_url
  
  end
  
  def catalog
	@prod = Product.all
  end

  def contact
  end
  
  def privacy
  end
  
  def help
  end
  
  def weekend
    @day = Time.now
    @to_saturday = 6 - @day.wday
  end
  
  def askinfo
  @cm = params[:value_in]
	if @cm.to_i > 0
		@inch = @cm.to_i / 2.54
		@feet = @inch / 12
		@conversionresult = @cm.to_s + " cm is " + @inch.to_s + " inches is " + @feet.to_s + " feet."
	end

  end 
  
  def search
  	@results=0
	@searchinput = params[:searchinput]
	if !@searchinput.empty?
		@results=1
		@searchcriteria="%#{params[:searchinput]}%"	
		@productlist = Product.where("description like ?",@searchcriteria).order("productname")
	end 
  end

  
  
  
end
