# My Code here....
def map_to_negativize(source_array)
  counter = 0
  new_array = []

  while source_array[counter] do
    new_array << (-1 * source_array[counter])
    counter += 1
  end
  return new_array
end


def map_to_no_change(source_array)
  counter = 0
  new_array = []

  while source_array[counter] do
    new_array << source_array[counter]
    counter += 1
  end
  return new_array
end


def map_to_double(source_array)
  counter = 0
  new_array = []

  while source_array[counter] do
    new_array << (source_array[counter] * 2)
    counter += 1
  end
  return new_array
end


def map_to_square(source_array)
  counter = 0
  new_array = []

  while source_array[counter] do
    new_array << (source_array[counter] * source_array[counter])
    counter += 1
  end
  return new_array
end

def reduce_to_total(source_array, starting_point = nil)
  counter = 0
  total = 0

  if starting_point
    total += starting_point
  end

  while source_array[counter] do
    total = (total + source_array[counter])
    counter += 1
  end
  return total
end


def reduce_to_all_true(source_array)


  coupons.each do |coupon|
    coupon_name = coupon[:item]
    coupon_item_num = coupon[:num]
    cart_item = cart[coupon_name]

    next if cart_item.nil? || cart_item[:count] < coupon_item_num

    cart_item[:count] -= coupon_item_num

    coupon_in_cart = cart["#{coupon_name} W/COUPON"]

    if coupon_in_cart
      coupon_in_cart[:count] += 1
    else
      cart["#{coupon_name} W/COUPON"] = {
        price: coupon[:cost],
        clearance: cart_item[:clearance],
        count: 1
      }
    end
  end

  cart




end


def reduce_to_any_true(source_array)
  value = false
  source_array.length.times do |index|
    if source_array[index] == true
      value = true
    end
  end
  value
end
