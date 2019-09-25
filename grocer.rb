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
      cart[n[:item]][:count]-=1
      
    
  }
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
