sowpods = File.readlines("sowpods_alphabetical.txt").map(&:chomp)
letterpress = File.readlines("letterpress_alphabetical.txt").map(&:chomp)
File.open("letterpress_minus_sowpods.txt", 'w') {|f| f.write (letterpress-sowpods).join("\n") }
File.open("sowpods_minus_letterpress.txt", 'w') {|f| f.write (sowpods-letterpress).join("\n") }