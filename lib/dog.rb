require 'pry'

class Dog
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        self.save
    end

    def save
        @@all << self
    end

    def self.all 
        @@all
    end

    def self.print_all
        all_names = []
        @@all.each do |name|
            all_names << name.name
        end
        puts all_names
    end

    def self.clear_all
        @@all = []
    end
end


# pluto = Dog.new("pluto")
# fido = Dog.new("fido")

# binding.pry