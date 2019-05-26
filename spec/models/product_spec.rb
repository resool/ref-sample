require 'rails_helper'

RSpec.describe Product, type: :model do
  it 'has a valid factory' do
    expect(build(:product)).to be_valid
  end

  it 'is invalid without the name' do
    expect(build(:product, name: '')).not_to be_valid
  end

  it 'is invalid without the ext_id' do
    expect(build(:product, ext_id: '')).not_to be_valid
  end
end
