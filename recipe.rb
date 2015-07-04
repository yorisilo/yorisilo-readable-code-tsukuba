# coding: utf-8

def openRecipes(recipes)
  File.open(recipes) do |f|
    ary = f.readlines
    ary.each do |line|
      puts line
    end
  end
end

openRecipes(ARGV[0])
