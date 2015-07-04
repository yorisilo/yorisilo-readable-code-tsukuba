# # coding: utf-8

# recepes = [{id, name, recipe}, {id, name, recipe}, ...]
class Recipes
  def initialize(filename)
    @file = filename
    @recipes = []
    @usr = ""
  end

  attr_accessor :usr_name

  def show_all
    @recipes.each do |recipe|
      puts "#{recipe[:id]}: #{recipe[:name]} #{recipe[:making]}"
    end
  end

  def read(i)
    @file.each.with_index(i) do |row, id|
      recipe = row.split(" ")
      @recipes.push({:id => id, :name => recipe[0], :making => recipe[1]})
    end
  end

  def show_recipe_by_id(id)
    @recipes.each do |recipe|
      puts "#{recipe[:id]}: #{recipe[:name]} #{recipe[:making]}" if id == recipe[:id]
    end
    #recipe = @recipes[id-1]
    #puts "#{recipe[:id]}: #{recipe[:name]} #{recipe[:making]}"
  end

  def show_usr(usr)
    puts "ユーザー名: #{usr}"
  end
end

# main
# ruby recipe.rb kou recipes1.txt piyo recipes2.txt okkez recipes3.txt kou recipes4.txt

id = ARGV[8].to_i
index = 1

for i in 0..3
  usr_name = ARGV[i*2]
  file     = ARGV[i*2+1]

  File.open(file) do |f|
    recipes = Recipes.new(f)
    recipes.read(index)

    recipes.show_usr(usr_name)
    recipes.show_all if ARGV.size == 8
    recipes.show_recipe_by_id(id) if ARGV.size == 9
    puts "\n"
  end

  File.open(file) do |f|
    index = index + f.readlines.size
  end

end
