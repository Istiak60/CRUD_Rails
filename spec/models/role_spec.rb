require 'rails_helper'

RSpec.describe Role, type: :model do
  let(:role) { FactoryBot.create(:role) }

  it 'has a valid role factory' do
    expect(role).to be_valid
  end

  describe 'associations' do
    it { is_expected.to have_many(:users) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:role_name) }
    it {
      should define_enum_for(:role_name).with_values(%i(author commenter))
    }
  end
end
