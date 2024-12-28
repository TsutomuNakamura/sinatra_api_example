class MainController < Sinatra::Base
  set :default_content_type, 'application/json; charset=utf-8'

  get '/' do
    {"hello": "Hello World!"}
  end

  after do
    response.body = JSON.dump(response.body)
  end
end
