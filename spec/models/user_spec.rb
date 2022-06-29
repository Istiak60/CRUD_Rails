require 'rails_helper'

RSpec.describe User, type: :model do
  let(:role) { FactoryBot.create(:role) }
  let!(:user) do
    FactoryBot.create(:user, phoneNo: '888655542236', password: 'Author990', role_id: role.id)
  end 

  it 'has a valid user factory' do
    expect(user).to be_valid
  end
end
