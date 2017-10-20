def oxford_comma(array)
  if array.length == 1
    return array.join
  elsif array.length ==2
    return array.join(" and ")
  else
    nstr = array.join(", ")
    narr = nstr.split(" ")
    narr[array.length-2]=array[array.length-2]+" and "

    narr
  end
end
print (oxford_comma(["hi","dog","cat","giraffe"]))