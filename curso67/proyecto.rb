#PROYECTO
#Crea una clase Proyecto que tenga los siguientes atributos: nombre, descripcion. 
#Además, crea un método de instancia llamado presentacion que muestre el nombre del 
#proyecto y su descripción separados por una coma.

class Proyecto
    # tu codigo aquí
    attr_accessor :Nombre, :Descripción
    @presentacion
end

proyecto1 = Proyecto.new("Proyecto 1", "Descripción 1")
puts proyecto1.nombre # => "Proyecto 1"
proyecto1.presentacion  # => "Proyecto 1, Descripción 1"