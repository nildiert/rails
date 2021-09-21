class Person
    def initialize(name:, age:)
        @name = name.to_s
        @age = age.to_i
    end

    def first_name
        @name.split(' ').first
    end

    def last_name
        @name.split(' ').last
    end

    def adult?
        @age >= 18
    end
end



class Person:

    def __init__(name, age):
        self.name = name
        self.age = age

    def first_name(self):
        return self.name.split(' ')[0]

    def last_name(self):
        return self.name.split(' ')[-1]

    def adult(self):
        return self.age