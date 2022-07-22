require 'rails_helper'

RSpec.describe 'character facade' do
  it 'return count for fire nation members' do
    fire_nation_members = SearchFacade.get_characters_by_nation('fire nation')
    # require "pry"; binding.pry
    expect(fire_nation_members.members).to be_an(Integer)
    expect(fire_nation_members.members).to be > 0
    expect(fire_nation_members.members).to eq(97)
  end
end
