require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with valid attributes' do
    user = FactoryBot.create(:user)
    expect(user).to be_valid
  end

  it 'is not valid without a username' do
    user = FactoryBot.build(:user, username: nil)
    expect(user).not_to be_valid
  end

  it 'is not valid with a duplicate username' do
    FactoryBot.create(:user, username: 'uniqueusername')
    user = FactoryBot.build(:user, username: 'uniqueusername')
    expect(user).not_to be_valid
  end

  it 'is not valid without a password_digest' do
    user = FactoryBot.build(:user, password_digest: nil)
    expect(user).not_to be_valid
  end
end
