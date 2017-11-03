def pet_shop_name(shop)
  return @pet_shop [:name]
end

def total_cash(shop)
  return @pet_shop [:admin][:total_cash]
end

def add_or_remove_cash(shop, cash)
  return @pet_shop [:admin][:total_cash] += cash
end

def pets_sold(sold)
  return @pet_shop [:admin][:pets_sold]
end

# def increase_pets_sold(shop, num_sold)
#   return [:admin][:pets_sold]
# end

def stock_count(shop_name)
  return shop_name[:pets].length
end
