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
  
 i = 0
  coupons.map{ |n|
    string = n[:item]
    if (cart.key?(string))
      cart[string][:count] -= n[:num]
      #clearance = cart[n[:item]][:clearance]
     clearance = cart[string][:clearance]
      
      price = n[:cost] / n[:num]
      count = n[:num]
      
      #delete if quantity is 0
      #if (cart[n[:item]][:count] < 1)
       # cart.delete(n[:item])
      #end
      
      if (cart.key?("#{string} W/COUPON"))
        #price = cart["#{string} W/COUPON"][:price] + price
        
        count = cart["#{string} W/COUPON"][:count] + count
        cart["#{string} W/COUPON"][:price] = price
        cart["#{string} W/COUPON"][:clearance] = clearance
        cart["#{string} W/COUPON"][:count] =  count
      else
        cart["#{string} W/COUPON"] = {
          price: price,
          clearance: clearance,
          count: count
        }
      end
    end
    
  }
  
  cart
  
  cart
end

def apply_clearance(cart)
  # code here
  newHash = Hash.new
  cart.map{|n|
    
    newHash[n] = {
      count: cart[n]
    }
    
    if n
    
    
  }
  
end

def checkout(cart, coupons)
  # code here
end
