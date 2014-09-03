require 'bspec'

describe BSpec do
  it 'correctly loads' do
    expect(BSpec).to be_a(Module)
  end
end

