def pet_shop_name(the_name)
  return the_name[:name]
end

def total_cash(cash)
  return cash[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount)
  shop[:admin][:total_cash] + amount
  return shop[:admin][:total_cash] + amount
end

def pets_sold(sold)
    return sold[:admin][:pets_sold]
  end