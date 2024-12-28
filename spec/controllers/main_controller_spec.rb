require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
require './app/controllers/main_controller.rb'

RSpec.describe 'app' do
  it 'should return {"hello": "Hello World!"}' do
    get '/'
    expect(last_response.status).to eq 200
    expect(last_response.body).to eq({hello:"Hello World!"}.to_json)
    expect(last_response.headers['Content-Type']).to eq 'application/json; charset=utf-8'
  end
end
