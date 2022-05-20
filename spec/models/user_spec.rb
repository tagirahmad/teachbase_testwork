require 'rails_helper'

RSpec.describe User, type: :model do
  it 'creates user if password and email both was provided' do
    user = create :user
    expect(user.persisted?).to eq true
  end

  it 'creates user if password was not provided' do
    user = build :user, password: nil
    user.save
    expect(user.persisted?).to eq false
  end

  it 'creates user if email was not provided' do
    user = build :user, email: nil
    user.save
    expect(user.persisted?).to eq false
  end
end
