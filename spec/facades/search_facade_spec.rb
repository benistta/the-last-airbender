require 'rails_helper'

RSpec.describe 'character facade' do
  it 'return count for fire nation members' do
    fire_nation_members = SearchFacade.get_characters_by_nation('fire nation')
    # require "pry"; binding.pry
    expect(fire_nation_members.members).to be_an(Integer)
    expect(fire_nation_members.members).to be > 0
    expect(fire_nation_members.members).to eq(97)
  end

  it 'return data for fire nation first 25 members' do
    first_25_members = SearchFacade.first_members('fire nation')
    # require "pry"; binding.pry
    expect(first_25_members.count).to eq(25)
    expect(first_25_members.count).to be_an(Integer)

    expect(first_25_members.first).to be_a(Member)

    member2 = first_25_members[1]
    # require "pry"; binding.pry
    expect(member2).to be_a(Member)
    expect(member2.name).to be_a(String)
    expect(member2.formatted_allies).to be_a(String)
    expect(member2.formatted_enemies).to be_a(String)
    expect(member2.affiliation).to be_a(String)
    expect(member2.photo).to be_a(String)
  end
end
