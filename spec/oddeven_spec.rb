require_relative '../src/oddeven.rb'


describe 'OddEven kata' do

    context 'Even numbers' do
        
        it 'The number four is Even' do
            #Arrange
            number = 4
            #act
            result = oddeven(number)
            #assert
            expect(result).to eq("Even  #{number}")
        end

        it 'The number six is Even' do
            #Arrange
            number = 6
            #act
            result = oddeven(number)
            #assert
            expect(result).to eql("Even  #{number}")
        end

        it 'The number one hundred is Even' do
            #Arrange
            number = 100
            #act
            result = oddeven(number)
            #assert
            expect(result).to eql("Even  #{number}")
        end

        it 'The number ten are not prime number' do
            #Arrange
            number = 10 
            #act
            result = oddeven(number)
            #assert
            expect(result).to eql("Even  #{number}")
        end
    
    end

    context 'Odd numbers' do
        
        it 'The number nine is Odd' do
            #Arrange
            number = 9
            #act
            result = oddeven(number)
            #assert
            expect(result).to eql("Odd   #{number}")
       end
   
       it 'The number fifteen is Odd' do
           #Arrange
           number = 15
           #act
           result = oddeven(number)
           #assert
           expect(result).to eql("Odd   #{number}")
       end

    end

    context 'Prime numbers' do
        
        it 'The number seven is Prime' do
            #Arrange
            number = 7
            #act
            result = oddeven(number)
            #assert
            expect(result).to eql("Prime #{number}")
        end

        it 'The number thirteen is Prime' do
            number = 13
            result = oddeven(number)
            expect(result).to eq("Prime #{number}")
        end
        
    end
end
