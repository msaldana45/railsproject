class ReportController < ApplicationController
  def reportlist
  @custlist=Customer.order('lastname')
  @listprod=Product.all
  @listsale=Order.all
  end

  def listcust
    @custlist=Customer.order('lastname')
  end

  def listprod
  @listprod=Product.all 
  end

  def listsale
  @listsale=Order.all
end
end