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
  coupons.map{ |n| 
    if cart.key?(n[:item])
      cart[n[:item]][:count]-= n[:num]
      
      #delete if quantity is 0
      if (cart[n:item][:count] < 1)
        cart.delete(n[:item])
      end
      
      string = n[:item].concat(" W/COUPON")
      price = n[:cost] / n[:num]
      
      cart[string] = {
        price: price,
        clearance 
      }
      
    
  }
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
