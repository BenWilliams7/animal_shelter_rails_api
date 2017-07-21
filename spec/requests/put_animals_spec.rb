require 'rails_helper'

describe "update animal route", :type => :request do

  describe "GET /animals"
  let!(:animals) { FactoryGirl.create_list(:animal, 20)}


  it 'updates an individual animal' do
    put '/animals/1', params: { :name => 'Wowzer!!!' }
    get '/animals/1'
    expect(JSON.parse(response.body)['name']).to eq('Wowzer!!!')
  end

  it 'displays success message' do
    put '/animals/1', params: { :name => 'Wowzer!!!' }
    expect(JSON.parse(response.body)['message']).to eq('Your animal has been updated successfully.')
  end

end
#
#
