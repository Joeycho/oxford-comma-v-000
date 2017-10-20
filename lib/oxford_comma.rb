def oxford_comma(array)
  if array.length == 1
    return array.join
  elsif array.length ==2
    return array.join(" and ")
  else
    nstr = array.join(", ")
    narr = nstr.split(", ")
    for i in 0..array.length-1
    #  print("array.length",array.length)
    #  print(i)
      if i == array.length-2
        narr[array.length-2]=array[array.length-2] + ', and'
    #    print(array[array.length-2]+', and')
      elsif i == array.length-1
        narr[i]=array[i]
      else
        narr[i]=array[i]+','
      end
    end

    nnarr = narr.join(" ")
  end
end
print (oxford_comma(["hi","dog","cat","giraffe"]))
