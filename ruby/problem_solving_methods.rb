array = [2, 4, 7, 8, 10]

def search_array(arr, n)
	arr.each do |x|
 if x == n 
   y = arr.index(x)
   p y
		else 
end
end
end

 

def fib (x)
array = []
first_index = 0
counter = 0
second_index = 1
placeholder_index = 1
until x == counter 
  array << first_index
  first_index = placeholder_index
  placeholder_index = second_index
  second_index = first_index + second_index
    counter += 1
    end
    p array
  end


  fib (100)