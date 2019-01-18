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

# def pets_by_breed(pet_shop, pet_breed)
#   # total number of a certain breed
#   pets = []
#   breed_total = 0
#   for pet in pet_shop[:pets]
#     if pet[:breed] == pet_breed
#       breed_total += 1
#     end
#   end
#   return breed_total
# end

def pets_by_breed(pet_shop, pet_breed)
  # total number of a certain breed
  pets = []
  
  for pet in pet_shop[:pets]
    if pet[:breed] == pet_breed
      pets << pet[:name]
    end
  end
  return pets
end
