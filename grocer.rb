def consolidate_cart(cart)
  # code here
  basket = {}
  cart.each do |thing|
    if basket[thing.keys[0]]
    basket[thing.keys[0]][:count] += 1 
  else
    basket[thing.keys[0]] = {
      count: 1,
      price: thing.values[0][:price],
      clearance: thing.values[0][:clearance]
    }
  end
end
  basket
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
