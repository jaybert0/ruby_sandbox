class Person

    attr_reader :name
    attr_accessor :age

    #what are we calling the method on?

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def say_hi
        "Hello my name is #{self.name}, and I am #{self.age} years old"
    end

    def high_five(buddy)
        "#{self.say_hi} is giving a high five to #{buddy.name}"
    end

    def self.all
        @@all
    end

    def self.oldest_person
        people = self.all
        people.max { |a, b| a.age <=> b.age } 
    end


end

Person.all
Person.oldest_person