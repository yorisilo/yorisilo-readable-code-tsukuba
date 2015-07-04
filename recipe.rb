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

showRecipesId(ARGV[0])
