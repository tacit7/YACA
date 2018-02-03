require 'rails_helper'

RSpec.describe Message, type: :model do
  it 'is valid with valid attributes' do
    message = FactoryBot.create(:message)
    expect(message).to be_valid
  end

  it 'is not valid without a body' do
    message = FactoryBot.build(:message, body: nil)
    expect(message).not_to be_valid
  end

  it 'is not valid without a user' do
    message = FactoryBot.build(:message, user: nil)
    expect(message).not_to be_valid
  end
end
