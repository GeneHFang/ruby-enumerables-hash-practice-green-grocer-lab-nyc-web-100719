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
  coupons.map{ |n|
    
    if (cart.key?(n[:item]) && cart[n[:item]][:count] >= n[:num])
      cart[n[:item]][:count] -= n[:num]
      #clearance = cart[n[:item]][:clearance]
     clearance = cart[n[:item]][:clearance]
      temp = n[:item]
      string = temp.concat(" W/COUPON")
      price = n[:cost] / n[:num]
      count = n[:num]
      
      #delete if quantity is 0
      #if (cart[n[:item]][:count] < 1)
       # cart.delete(n[:item])
      #end
      
      if (cart.key?(string))
        price = cart[string][:price] + price
        
        count = cart[string][:num] + count
        cart[string][:price] = price
        cart[string][:clearance] = clearance,
        cart[string][:count] =  count
      else
        cart[string] = {
          price: price,
          clearance: clearance,
          count: count
        }
      end
    end
    
  }
  
  cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
