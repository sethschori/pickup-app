require 'rails_helper'

describe Pickup do
  describe 'validations' do
    it 'happy path pickup date today' do
      pickup = create(:pickup, pickup_date: (Date.today))
      expect(pickup.pickup_date).to eq(Date.today)
    end

    it 'raises when creating a pickup date in the past' do
      expect {
        create(:pickup, pickup_date: (Date.today - 1))
      }.to raise_error(ActiveRecord::RecordInvalid, "Validation failed: Pickup date The pickup date can not be in the past")
    end
  end
end
