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

# I learned just how valuable pseudocode can be, whereas in assignments prior I would just dive right into the coding
# The tradeoffs of using arrays and hashes is that it is much simpler and easier to manage and update hash keys and values, whereas arrays are good for splitting user input into data sets.
# A method returns an output
# You can pass just about anything as an argument into a method
# You can pass information between methods by re-assigning their value to have the info be outputted
# I solidified my understanding of the usefulness of pseudocoding. I guess I'm still a little unclear how to transfer outputs from one method to be applied as an input for another method.



 


