require 'rails_helper'

describe "get animal route", :type => :request do

  describe "GET /animals"
  let!(:animals) { FactoryGirl.create_list(:animal, 20)}

  before { get '/animals'}

  it 'returns animals' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
