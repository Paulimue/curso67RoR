#ejercicios de arreglos

a = ["Matz", "Guido", "Dojo", "Choi", "John"]
b = [5,6,9,3,1,2,4,7,8,10]
c = ["Dojo", 9]


puts a[0]
puts a[4]

puts a+b

x = a+b
puts x.to_s

x = (a+b)-c
puts x.to_s

puts b.class

puts a.shuffle.join(", ")

a.delete("Choi")
puts a


a.push("Paulina")
puts a
a.pop()
puts a


puts a.length
puts "Length of a is #{a.length}"


puts a.sort

puts a.reverse

puts a.insert(5, "hola")

#values_at()
a = %w{gato perro oso}; puts a.values_at(1,2).join(' y ')


