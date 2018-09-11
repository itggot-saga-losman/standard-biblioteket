def multiply(tal1,tal2)

    paj = tal1
    counter = 1

    if tal2 > 0

        while counter != tal2

        paj += tal1

        counter += 1
       
        end


    else 
        while counter != tal2

        paj -= tal1

        counter -= 1
      
        end
    end

    return paj
  
end


puts multiply(-94,-9)
