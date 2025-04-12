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

    end
end