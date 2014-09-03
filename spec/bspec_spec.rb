require 'bspec'
include BSpec

describe BSpec::TestObject do
  it 'loads correctly' do
    expect(BSpec::TestObject).to be_a(Class)
  end

  it 'raises exceptions with false comparisons' do
    obj = BSpec::TestObject.new(3)
    expect { obj.to_be(4) }.to raise_error
  end

  it 'returns true on true comparisons' do
    obj = BSpec::TestObject.new(3)
    expect(obj.to_be(3)).to be true
  end
end

describe BSpec do
  it 'loads correctly' do
    expect(BSpec).to be_a(Module)
  end

  it 'returns a TestObject' do
    expect(want('string')).to be_a(BSpec::TestObject)
  end

  it 'understands when things are true' do
    true_exp = want(true).to_be true
    expect(true_exp).to be true

    true_exp = want(3).to_be 3
    expect(true_exp).to be true
  end

  it 'understands when things are false' do
    expect { want(true).to_be false }.to raise_error
    expect { want(3).to_be 4 }.to raise_error
  end
end

