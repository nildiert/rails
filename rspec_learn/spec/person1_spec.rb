require './person1'


RSpec.describe Person1 do
    describe '#first_name' do
        it 'returns the first name of the person' do
            person = Person1.new(name:'Jhon Doe', age:17)
            expect(person.first_name).to eq('Jhon')
        end
    end
    describe '#last_name' do
        it 'returns the last name of the person' do
            person = Person1.new(name:'Jhon Doe', age:17)
            expect(person.last_name).to eq('Doe')
        end
    end
    describe '#adult?' do
        it 'returns true if age is greater than 17' do
            person = Person1.new(name:'Jhon Doe', age:21)
            expect(person.adult?).to eq(true)
        end
        it 'returns false if age is less than 18' do
            person = Person1.new(name:'Jhon Doe', age:17)
            expect(person.adult?).to eq(false)
        end
    end
end

