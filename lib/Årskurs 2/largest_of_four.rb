def largest_of_four (num1,num2,num3,num4)
    if num1 > num2
    gurk = num1
    else   
    gurk = num2
    end

    if num3 > num4
        hallon = num3
    else   hallon = num4
    end 

    if  hallon > gurk
        largest = hallon
    else largest = gurk
    end
return largest
end

ananas = largest_of_four(7,3,21,24)
puts ananas