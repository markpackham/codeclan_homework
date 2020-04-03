def pet_shop_name(the_name)
  return the_name[:name]
end

def total_cash(cash)
  return cash[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount)
  shop[:admin][:total_cash] += amount
end

def pets_sold(sold)
  return sold[:admin][:pets_sold]
end

def increase_pets_sold(sold, amount)
  sold[:admin][:pets_sold] += amount
end

def stock_count(stock)
  return stock[:pets].length
end

# still need to do
def pets_by_breed(shop, breed)
  breed_amount = []
  for sh in shop[:pets]
    print sh
  end
end

def add_pet_to_stock(pet_shop, new_pet)
    pet_shop[:pets].push(new_pet)
end

def customer_cash(customers)
    return customers[:cash]
end

def remove_customer_cash(customer,amount)
    customer[:cash] -= amount
end