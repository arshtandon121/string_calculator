require 'string_calculator'

describe StringCalculator do
    describe '.add' do
        context 'given an empty string' do
        it 'returns zero' do
            expect(StringCalculator.add("")).to eq(0)
        end
        end

        context 'given a single number' do
            it 'returns the number' do
            expect(StringCalculator.add("1")).to eq(1)
            end
        end

        context 'given two numbers' do
            it 'returns the sum' do
              expect(StringCalculator.add("1,2")).to eq(3)
            end
        end

        context 'given multiple numbers' do
            it 'returns the sum' do
              expect(StringCalculator.add("1,2,3,4,5")).to eq(15)
            end
        end
          
        context 'given new lines between numbers' do
            it 'returns the sum' do
                expect(StringCalculator.add("1\n2,3")).to eq(6)
            end
        end

        context 'given a custom delimiter' do
            it 'returns the sum' do
              expect(StringCalculator.add("//;\n1;2")).to eq(3)
            end
        end

        context 'given negative numbers' do
            it 'throws an exception' do
              expect { StringCalculator.add("1,-2") }.to raise_error("Negatives not allowed: -2")
            end
          
            it 'shows all negative numbers in the exception message' do
              expect { StringCalculator.add("1,-2,-3") }.to raise_error("Negatives not allowed: -2, -3")
            end
        end

    end
end