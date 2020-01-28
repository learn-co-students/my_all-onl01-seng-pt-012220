require 'pry'

def my_all?(collection) #open method
    i = 0 #loop counter
    block_return_values = [] #empty array for include?
    while i < collection.length #while length in collection will run
        block_return_values << yield(collection[i]) #yield each i in collection << block_return_values
        i += 1 #add one each loop
    end
    #add include method to determine return value of the my_all
    if block_return_values.include?(false) #looking if this include? false if it does
        false #return false
    else
        true #return true for all
    end

end