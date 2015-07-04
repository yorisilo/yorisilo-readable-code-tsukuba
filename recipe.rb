# # coding: utf-8

# recepes = [{id, name, recipe}, {id, name, recipe}, ...]
class Recipes
  def initialize(filename)
    @file = filename
    @recipes = []
  end

  def show_all
    @recipes.each do |recipe|
      puts "#{recipe[:id]}: #{recipe[:name]} #{recipe[:making]}"
    end
  end

  def read
    @file.each.with_index(1) do |row, id|
      recipe = row.split(" ")
      @recipes.push({:id => id, :name => recipe[0], :making => recipe[1]})
    end
  end

  def show_recipe_by_id(id)
    # @recipes.each do |recipe|
    #   puts "#{recipe[:id]}: #{recipe[:name]} #{recipe[:making]}" if id == recipe[:id]
    # end
    recipe = @recipes[id-1]
    puts "#{recipe[:id]}: #{recipe[:name]} #{recipe[:making]}"
  end
end

# main
filename = ARGV[0]
id = ARGV[1].to_i

File.open(filename) do |f|
  recipes = Recipes.new(f)
  recipes.read

  recipes.show_all if ARGV.size == 1
  recipes.show_recipe_by_id(id) if ARGV.size == 2
end
