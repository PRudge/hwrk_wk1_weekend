def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop,amount)
  pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, new_pets_sold)
  pet_shop[:admin][:pets_sold] += new_pets_sold
end

def stock_count(pet_shop)
  # stock count is number of items in pets array
  return pet_shop[:pets].length
end

def pets_by_breed(pet_shop, pet_breed)
  pets = []
  # go thru each pet in the pets of pet_shop array
  for pet in pet_shop[:pets]
    pets << pet[:name] if pet[:breed] == pet_breed
  end
  return pets
end

def find_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    return pet if pet[:name] == pet_name
  end
  # no pets found so return nil
  return nil
end

def remove_pet_by_name(pet_shop, pet_name)
  for pet in pet_shop[:pets]
    pet_shop[:pets].delete(pet) if pet[:name] == pet_name
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
end
