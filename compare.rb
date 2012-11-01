sowpods = File.readlines("sowpods.txt").map(&:chomp).map(&:downcase)
letterpress = File.readlines("letterpress_alphabetical.txt").map(&:chomp).map(&:downcase)
File.open("letterpress_minus_sowpods.txt", 'w') {|f| f.write (letterpress-sowpods).join("\n") }
File.open("sowpods_minus_letterpress.txt", 'w') {|f| f.write (sowpods-letterpress).join("\n") }