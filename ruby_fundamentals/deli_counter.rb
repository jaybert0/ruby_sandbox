# Variables
#  identifier = data
name = "adam"
float_num = 1.0
integer_num = 3

# Methods
def say_name(name="default name")
    puts name
end

# Conditionals

def how_much(num)
    # if the num is greater than 0 "you got monayyy"
    # else "need some fundsss"
    if num <= 0
        puts "need some fundsss"
    else
        puts "you got #{num} monayyy"
    end
end

# Arrays

# Hashes
person = {name: "John", age: 10}
person2 = {:name => "Susan", :age => 15}

puts person2[:age]
puts person[:age]

# puts
# binding.pry


def line(deli_array)
    if deli_array.empty?
        puts "The line is currently empty."
    else
        #creating a base string that looks like "The line is currently:" " 
        base_string = "The line is currently:"
        #loop over the deli array
        deli_array.each.with_index(1) {|name, index|
            #add the name from the current position in the loop
            #of that array to a base string along with a number that
            base_string << " #{index}. #{name}"
            #increments along with the length of the array
        }
        puts base_string
    end
end

def take_a_number(deli_array, name)
    # if deli_array.empty?
    #     puts "Welcome, #{name}. You are number 1 in line."
    #     deli_array.push(name)
    # else

    # end

    deli_array.push(name)
    puts "Welcome, #{name}. You are number #{deli_array.length} in line."
end


def now_serving(deli_array)
    if deli_array.length == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{deli_array[0]}."
        deli_array.shift()
    end
end
