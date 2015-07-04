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

  def show_usr(usr)
    puts "ユーザー名: #{usr}"
  end
end

# main
filename = ARGV[1]
id = ARGV[2].to_i
usr_name = ARGV[0]

File.open(filename) do |f|
  recipes = Recipes.new(f)
  recipes.read

  recipes.show_usr(usr_name)
  recipes.show_all if ARGV.size == 2
  recipes.show_recipe_by_id(id) if ARGV.size == 3
end
