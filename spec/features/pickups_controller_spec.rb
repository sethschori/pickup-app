require 'rails_helper'

describe PickupsController do
  it 'returns pickups for only the current user' do
    user1 = create(:user)
    user2 = create(:user)
    pickup1 = create(:pickup, user: user1, location_name: "hidden from user2")
    pickup2 = create(:pickup, user: user2, location_name: "visible to user2")
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user2)
    visit '/pickups'
    expect(page).to have_text('visible to user2')
    expect(page).not_to have_text('hidden from user2')
  end
end
