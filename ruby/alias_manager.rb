def next_vowel(a)
  a.map do |b|
    if b == 'a'
       b = 'e'
    elsif b == 'e'
      b = 'i'
    elsif b == 'i'
      b = 'o'
    elsif b =='o'
      b = 'u'
    elsif b == 'u'
      b = 'a'
    else
      b
    end
  end
end 

def alias_manager(name)
alias_array = name.split(' ')
last_name = alias_array[1]
gap = last_name.length
alias_array.insert(0,last_name)
alias_array.delete_at(2)

alias_array = alias_array.join
alias_array = alias_array.split('')

alias_array.each do |x|
  if x == 'a' || x == 'e' || x == 'i' || x == 'o' || x == 'u'
    x
  else
    x.next!
  end
  end
  next_vowel(alias_array)
  alias_array = alias_array.join
  alias_array.insert(gap, " ")
  p "#{name} is also known as #{alias_array}"
end

alias_manager("Felicia Torres")

# I tested this commented-code below to ensure that my next_vowel method was working properly.
# It functioned properly for the test, however fails to work correctly when within my alias_manager method.
#test = ['a','e','o']
#next_vowel(test)

alias_names = []

counter = false
until counter == true
puts "Give me a name and I'll give you an Alias (type 'quit' to escape)"
user_alias = gets.chomp
if user_alias == 'quit' || user_alias == ''
  counter = true
else
alias_names << alias_manager(user_alias)
end
end

p alias_names
