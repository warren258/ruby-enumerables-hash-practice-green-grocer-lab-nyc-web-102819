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
  coupons.each do |coupon|
    if basket.keys.include? coupon[:thing]
      if basket[coupon[:thing]][:count] >= coupon[:num]
        new_thing = "#{coupon[:thing]} W/COUPON"
        if basket[new_thing]
          basket[new_thing][:count] += coupon[:num]
        else
          basket[new_thing] = {
            count: coupon[:num],
            price: coupon[:cost]/coupon[:num],
            clearance: basket[coupon[:thing]][:clearance]
          }
        end
        basket[coupon[:thing]][:count] -= coupon[:num]
      end
    end
  end
  basket
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
