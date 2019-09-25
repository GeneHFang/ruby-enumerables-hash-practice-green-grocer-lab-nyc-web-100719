def find_item(name)
  items.find { |item| item[name] }
end

def find_coupon(name)
  coupons.find { |coupon| coupon[:item] == name }
end

def items
	[
		{"AVOCADO" => {:price => 3.00, :clearance => true}},
		{"KALE" => {:price => 3.00, :clearance => false}},
		{"BLACK_BEANS" => {:price => 2.50, :clearance => false}},
		{"ALMONDS" => {:price => 9.00, :clearance => false}},
		{"TEMPEH" => {:price => 3.00, :clearance => true}},
		{"CHEESE" => {:price => 6.50, :clearance => false}},
		{"BEER" => {:price => 13.00, :clearance => false}},
		{"PEANUTBUTTER" => {:price => 3.00, :clearance => true}},
		{"BEETS" => {:price => 2.50, :clearance => false}}
	]
end



def coupons
	[
		{:item => "AVOCADO", :num => 2, :cost => 5.00},
		{:item => "BEER", :num => 2, :cost => 20.00},
		{:item => "CHEESE", :num => 3, :cost => 15.00}
	]
end


avocado = find_item("AVOCADO")
coupon = find_coupon("AVOCADO")
consol_cart = consolidate_cart([avocado, avocado, avocado, avocado, avocado])
two_coupon_result = apply_coupons(consol_cart, [coupon, coupon])







