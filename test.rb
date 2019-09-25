def find_item(name)
  items.find { |item| item[name] }
end

def find_coupon(name)
  coupons.find { |coupon| coupon[:item] == name }
end


