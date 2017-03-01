def grocery_list(item)
    item_arr=item.split(/ /)
    h = {}
    item_arr.each {|x| h[x]=1}
    h
end

def grocery_add(h,item, qty)
    h[item] = qty
    h
end

def grocery_remove(h, item)
	h.delete(item)
	h
end

def grocery_update(h, item, qty)
	h[item] = qty
	h
end

def print_method(h)
	h.each {|key, value| puts "#{key}: #{value}"}
end


list = "Lemonade Tomatoes Onions Ice-Cream"

final_grocery_list = grocery_list(list)

p final_grocery_list

final_grocery_list["Lemonade"] = 2 
final_grocery_list["Tomatoes"] = 3
final_grocery_list["Onions"] = 1 
final_grocery_list["Ice-Cream"] = 4

p final_grocery_list 

grocery_remove(final_grocery_list, "Lemonade")

grocery_update(final_grocery_list, "Ice-Cream", 1)

print_method(final_grocery_list)

 


