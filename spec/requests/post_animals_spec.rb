require 'rails_helper'

describe "post an animal route", :type => :request do

  before do
    post '/animals', params: { :name => 'Wowzer', :breed => 'Abyssinian', :age => 12, :available => true }
  end

  it 'returns the name' do
    expect(JSON.parse(response.body)['name']).to eq('Wowzer')
  end

  it 'returns the animal breed' do
    expect(JSON.parse(response.body)['breed']).to eq('Abyssinian')
  end

  it 'returns the animal availability' do
    expect(JSON.parse(response.body)['available']).to eq(true)
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end
