x = "CodingDojo"

    puts x.length
    puts x.class
    puts x.capitalize
    puts x.upcase
    puts x.downcase
    puts x[2]
    puts x.include?("dojo")
    puts x.include?("Dojo")


    puts "This word has the word ’Dojo’" if x.include? "Dojo"

    x = "john, charles, matt, joe"
    puts x.split (",")

    y = ""
    puts "Y is empty" if y.empty?