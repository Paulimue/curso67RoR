#def test 
#    puts "Estas en el metodo" 
#    yield 
#    puts "Estas de vuelta en el metodo" 
#    yield 
#end 
#test { puts "Estas en el bloque" }

def test 
    yield 5 
    puts "Estas en el metodo del test" 
    yield 100 
end 
test { |i| puts "Estas en el bloque #{i}" }