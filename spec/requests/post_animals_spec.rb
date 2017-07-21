require 'rails_helper'

describe "post a animal route", :type => :request do

  before do
    post '/animals', params: { :name => 'Wowzer', :breed => 'Abyssinian' }
  end

  it 'returns the name name' do
    expect(JSON.parse(response.body)['name']).to eq('Wowzer')
  end

  it 'returns the animal content' do
    expect(JSON.parse(response.body)['breed']).to eq('Abyssinian')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
