def consolidate_cart(cart)
  # code here
  newHash = Hash.new
  
  
  cart.map { |n|
  
    m = n.keys[0]
    
    
    if (newHash.key?(m))
      newHash[m][:count] = newHash[m][:count] + 1
    else
      
        
      newHash[m] = {
        price: n[m][:price],
        clearance: n[m][:clearance],
        count: 1
        
      }
    end
  
  }
  
  newHash
end




    

def apply_coupons(cart, coupons)
  # code here
  
  newHash = Hash.new
  i = 0
  #coupons.map{ |n|
  while (i < coupons.length) do 
  
    n = coupons[i]
    
    if (cart.key?(n[:item]))
      cart[n[:item]][:count] = cart[n[:item]][:count] - n[:num]
      
      string = n[:item].concat(" W/COUPON")
      price = n[:cost] / n[:num]
      #clearance = cart[n[:item]][:clearance]
      
      #delete if quantity is 0
      #if (cart[n[:item]][:count] < 1)
       # cart.delete(n[:item])
      #end
      
      
      
      cart[string] = {
        price: price,
        clearance: clearance,
        count: n[:num]
      }
    end
    
    i+=1
  end  
  #}
  
  cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
