class Cat
    def initialize(attributes)
        @name = attributes[:name]
    end

    def name=(name)
        @name = name
    end

    def name
        @name
    end

end