require 'rspec'
require 'cd'

describe 'CD' do
  describe '#title' do
    it 'returns the title of a CD' do
      test_cd = CD.new('Something')
      expect(test_cd.title).to(eq('Something'))
    end
  end

  describe '.all' do
    it 'creates an empty array to store cd titles in' do
      expect(CD.all).to(eq([]))
    end
  end
end
