# coding: utf-8

def showRecipesId(recipes)
  File.open(recipes) do |f|
    ary = f.readlines
    ary.each.with_index(1) do |name, i|
      idName = "#{i}: #{name}"
      puts idName
    end
  end
end

def recipeId(recipes, id)
  File.open(recipes) do |f|
    ary = f.readlines
    idName = ary[id-1]
    puts "#{id}: #{idName}" if id != 0
    showRecipesId(recipes)  if id == 0
  end
end

recipeId(ARGV[0], ARGV[1].to_i)
