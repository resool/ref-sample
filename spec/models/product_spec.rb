# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :model do
  subject(:product) { build(:product) }

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:ext_id) }
    it { should validate_uniqueness_of(:ext_id) }
  end
end
