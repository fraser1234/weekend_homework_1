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

def increase_pets_sold(shop, num_sold)
  return shop[:admin][:pets_sold] += num_sold
end

def stock_count(shop_name)
  return shop_name[:pets].length
end


def pets_by_breed(shop, breed)
  pet_number = []
  for animal in shop[:pets]
    if animal[:breed] == breed
      pet_number << animal
    end
  end
  return pet_number
end

def find_pet_by_name(shop, name)
  for animal in shop[:pets]
    if animal[:name] == name
      return animal
    end
  end
  return nil
end

def remove_pet_by_name(shop, target)
  for animal in shop[:pets]
    if animal[:name] == target
      shop[:pets].delete(animal)
    end
  end
end

def add_pet_to_stock(shop, new_pet)
  shop[:pets] << new_pet
end
