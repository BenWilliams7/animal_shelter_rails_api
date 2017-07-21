require 'rails_helper'

describe "delete animal route", :type => :request do

  describe "GET /animals"
  let!(:animals) { FactoryGirl.create_list(:animal, 20)}


  it 'deletes an individual animal' do
    get '/animals/1'
    delete '/animals/1'
    expect(JSON.parse(response.body)['message']).to eq('Your animal has been deleted successfully.')
  end

end
#
#
