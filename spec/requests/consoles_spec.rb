require 'rails_helper'

RSpec.describe 'Consoles request' do
  # let(:response_json) { JSON.parse(response.body) }

  describe 'GET /consoles' do
    it 'returns an array of videogame consoles' do
      get '/consoles'
      expect(response_json['consoles']).to contain_exactly(
        'NESS',
        'SNES',
        'Genesis',
        'Xbox',
        'PS4',
        'Switch'
      )
    end

    it 'supports specifying consoles for a specific manufactuerer' do
      get('/consoles', params: { manufacturer: 'Nintendo' })
      expect(response_json['consoles']).to contain_exactly(
        'NES',
        'SNES',
        'Switch'
      )

    end

  end
end