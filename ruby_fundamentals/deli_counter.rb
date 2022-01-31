# Write your code here.

def line(arr)
    if arr.empty?
        puts "The line is currently empty."
    else
        count = 1
        string = "The line is currently:"
        arr.each do |person|
            string << " #{count}. #{person}"
            count += 1
        end
        puts string
    end
end