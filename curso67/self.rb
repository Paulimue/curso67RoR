=begin
class Fixnum
    def quien_soy
        puts self
    end
end

class String
    def quien_soy
        puts self
    end
end
4.quien_soy # => 4
15.quien_soy # => 15
"string".quien_soy # => "string"
"Hola Mundo".quien_soy # => "Hola Mundo"

class Mamifero
    def inicializar
        puts "Estoy vivo"
    end
    def respirar
        puts "Inhalar - Exhalar"
    end
    
    def quien_soy
        # muestra el objeto actual
        puts self
    end
end

mi_mamifero = Mamifero.new # => "Estoy vivo"
mi_mamifero.quien_soy # => #<Mamifero:0x007f9e86025dd8>
mi_mamifero.quien_soy.respirar # => undefined method `respirar' for nil:NilClass (NoMethodError)
=end

class Mamifero
    def initialize
        puts "Estoy vivo"
        self
    end
    def respirar
        puts "Inhalar - Exhalar"
        self
    end
    
    def quien_soy
        puts self
        self
    end
end

mi_mamifero = Mamifero.new.quien_soy.respirar