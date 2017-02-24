def alias_manager(name)
vowels = ['a','e','i','o','u']
alias_array = name.split(' ')
last_name = alias_array[1]
alias_array.insert(0,last_name)
alias_array.delete_at(2)
p alias_array
end

alias_manager("Dawson Graham")






