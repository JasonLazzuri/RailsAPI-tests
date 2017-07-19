require 'rails_helper'

describe "gets a specific review", :type => :request do

  before do
    post '/reviews', params: {:author => 'Richard', :content => 'the best'}
  end

  it 'returns the authors name' do
    expect(JSON.parse(response.body)['author']).to eq("Richard")
  end

  it 'returns the quote content' do
    expect(JSON.parse(response.body)['content']).to eq('the best')
  end

  it 'returns a created status' do
   expect(response).to have_http_status(:created)
 end

end
