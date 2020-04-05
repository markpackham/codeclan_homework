# Pet Shop

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

# Pet Shop Pets

def pets_by_breed(shop, breed)
  amount = []
  for sh in shop[:pets]
    if (sh[:breed] == breed)
      amount << sh[:breed]
    end
  end
  return amount
end

def find_pet_by_name(shop, name)
  for sh in shop[:pets]
    if (sh[:name] == name)
      return sh
    end
  end
  return nil
end

def remove_pet_by_name(shop, name)
  for sh in shop[:pets]
    if (sh[:name] == name)
      sh[:name] = nil
      sh[:pet_type] = nil
      sh[:dog] = nil
      sh[:breed] = nil
      sh[:price] = nil
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

# Customers

def customer_cash(customers)
  return customers[:cash]
end

def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

def customer_pet_count(customer)
  count = 0
  if customer[:pets] == nil
    return 0
  else
    for c in customer[:pets]
      count += 1
    end
    return count
  end
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end

# Optional

# Can customer afford pet?

def customer_can_afford_pet(customer, pet)
  if (customer[:cash] >= pet[:price])
    return true
  else
    return false
  end
end

# Integration tests

def sell_pet_to_customer(shop, pet, customer)
  #  don't bother doing anything if pet doesn't even exist
  if pet == nil
    return nil
  end

  cust = @customers
  for c in cust
    # check if customer actually exists
    if (c[:name] == customer[:name])
      # check if customer can afford pet
      if (c[:cash] >= pet[:price])
        add_pet_to_customer(customer, pet)
        shop[:admin][:pets_sold] += 1
        remove_customer_cash(customer, pet[:price])
        add_or_remove_cash(shop, pet[:price])
      end
    end
  end
end
