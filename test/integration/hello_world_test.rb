#encoding: utf-8
require_relative '../support/base_helper'
require_relative '../support/integration_helper'

describe 'The Root page' do

  before do
    get "/"
  end

  it 'must be present' do
    last_response.must_be :ok?
  end

  it 'must show the right title' do
    last_response.body.must_have_title 'My App'
  end

  it 'must show the right heading' do
    last_response.body.must_include '<h1>My App</h1>'
    last_response.body.must_include '<p>Hello world</p>'
  end

end
