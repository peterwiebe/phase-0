



def create_list (name)
  name = Hash.new
end

def add_item (hash, key, value)
  hash.has_key?(key) ? hash[key] += value : hash[key] = value
end

def remove_item (hash, key)
  hash.has_key?(key) ? hash.delete(key) : (return p key + " does not exist")
end

def new_quantity (hash, key, value)
  hash.has_key?(key) ? hash[key] = value : (return p key + " does not exist")
end

def print_list (hash)
  hash.each {|key, value| p key + " - " + value.to_s}
end



list = create_list("list")

add_item(list, "Lemonade", 2)
add_item(list, "Tomatoes", 3)
add_item(list, "Onions", 1)
add_item(list, "Ice Cream", 4)

remove_item(list, "Lemonade")

new_quantity(list, "Ice Cream", 1)

print_list(list)
