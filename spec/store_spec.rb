require('spec_helper')

describe(Store) do
  it {should have_many(:brands)}
  it {should have_many(:shoes)}
end
