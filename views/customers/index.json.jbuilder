json.array!(@customers) do |customer|
  json.extract! customer, :id, :firstname, :lastname, :email, :phone, :address1, :address2, :city, :state, :zip, :addlnotes
  json.url customer_url(customer, format: :json)
end
