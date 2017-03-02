class TodoList
   def initialize(item1, item2)
     @chores = []
     @chores.push item1
     @chores.push item2
     @chores
   end

   def get_items
    @chores
   end

   def add_item(item)
     @chores.push item
     @chores
     
   end

   def delete_item(item)
     @chores.delete(item)
     @chores
   end

   def get_item(ind)
     @chores[ind]
   end
end

list = TodoList.new("do the dishes", "moe the lawn")
p list.get_items

p list.add_item("mop")
p list.delete_item("do the dishes")

p list.get_item(0)