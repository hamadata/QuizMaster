require 'rails_helper'

RSpec.describe NumAlphabetConverter, type: :module do
  
  describe 'convert' do

    it '100' do
      expect(NumAlphabetConverter.convert(100)).to eq('one hundred')
    end

    it '1000' do
      expect(NumAlphabetConverter.convert(1_000)).to eq('one thousand')
    end

    it '10000' do
      expect(NumAlphabetConverter.convert(10_000)).to eq('ten thousand')
    end

    it '100_000' do
      expect(NumAlphabetConverter.convert(100_000)).to eq('one hundred thousand')
    end

    it '10_000_000' do
      expect(NumAlphabetConverter.convert(10_000_000)).to eq('ten million')
    end
    
    it '1_000_000_000' do
      expect(NumAlphabetConverter.convert(1_000_000_000)).to eq('one billion')
    end

    it 'thirteen' do
      expect(NumAlphabetConverter.convert(13)).to eq('thirteen')
    end

    it '25' do
      expect(NumAlphabetConverter.convert(25)).to eq('twenty-five')
    end

    it '229' do
      expect(NumAlphabetConverter.convert(229)).to eq('two hundred twenty-nine')
    end


    it '6543' do
      expect(NumAlphabetConverter.convert(6543)).to eq('six thousand five hundred forty-three')
    end

  end

end
