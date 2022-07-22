# As a user,
# When I visit "/"
# And I Select "Fire Nation" from the select field
# (Note: Use the existing select field)
# And I click "Search For Members"
# Then I should be on page "/search"
# Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
# And I should see a list with the detailed information for the first 25 members of the Fire Nation.
#
# And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies or "None"
# - The list of enemies or "None"
# - Any affiliations that the member has

RSpec.describe 'Nation search' do
  it 'total members in fire nation' do
    visit root_path
    select "Fire Nation"
    click_on 'Search For Members'
    expect(current_path).to eq("/search")

    expect(page).to have_content("Count: 97")
  end

  it 'has attributtes for the first 25 members' do
    member = SearchFacade.first_members('fire nation').first

    visit root_path
    select "Fire Nation"
    click_on 'Search For Members'

    # require "pry"; binding.pry
    expect(page).to have_content("Name", count: 25)
    expect(page).to have_content("Allies", count: 25)
    expect(page).to have_content("Enemies", count: 25)
    expect(page).to have_content("Affiliation", count: 25)

    expect(page).to have_content(member.name)
    expect(page).to have_content(member.formatted_allies)
    expect(page).to have_content(member.formatted_enemies)
    expect(page).to have_content(member.affiliation)
    expect(page).to have_content(member.photo)

    expect(page).to_not have_content("Affiliation: Earth Kingdom")
    expect(page).to_not have_content("Affiliation: Air Nomads")
    expect(page).to_not have_content("Affiliation: Water Tribes")
  end
end
