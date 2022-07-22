require 'rails_helper'

RSpec.describe 'Last Airbender API' do
  it 'returns nation data' do
    response = SearchService.all_members('fire nation')
    # require "pry"; binding.pry
    expect(response.count).to eq(97)
    expect(response).to be_an(Array)
  end
end
