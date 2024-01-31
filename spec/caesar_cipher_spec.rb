require_relative '../lib/main'

describe '#caesar_cipher' do
  it 'basic encryption' do
    expect(caesar_cipher('HELLO', 3)).to eq('KHOOR')
  end

  it 'basic encryption(lowercase)' do
    expect(caesar_cipher('hello', 3)).to eq('khoor')
  end

  it 'encryption with punctuation' do
    expect(caesar_cipher('HELLO, WORLD!', 5)).to eq('MJQQT, BTWQI!')
  end

  it 'encryption of sentence' do
    expect(caesar_cipher('QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD', 3)).to eq('THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG')
  end

  it 'encryption of case sensitive word' do
    expect(caesar_cipher('AbCdEfG', 10)).to eq('KlMnOpQ')
  end

end
