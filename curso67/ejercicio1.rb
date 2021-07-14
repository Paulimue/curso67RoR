puts "hola clase"

age = 22
if age >= 21
    puts "Bienvenido a la fiesta."
else
    puts "Todavía no."
end

if !(age < 21)
    puts "Bienvenido a la fiesta."
else
    puts "Todavía no."
end


number = 10
if number % 3 == 0 && number % 5 == 0
    puts "FizzBuzz"
elsif number % 3 == 0
    puts "Fizz"
elsif number % 5 == 0
    puts "Buzz"
end


