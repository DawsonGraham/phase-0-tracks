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
p alias_array
alias_array.each do |x|
	if x == 'a' || x == 'e' || x == 'i' || x == 'o' || x == 'u'
		x
	else
		x.next!
	end
	end
	next_vowel(alias_array)
	p alias_array
	alias_array = alias_array.join
	alias_array.insert(gap, " ")
	p alias_array
end

alias_manager("Felicia Torres")

test = ['a','e','o']
next_vowel(test)