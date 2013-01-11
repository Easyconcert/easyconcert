#encoding: utf-8
require_relative '../support/base_helper'
require_relative '../support/integration_helper'

describe 'The Not-Found Page' do

  before do
    get "/foo-bar"
  end

  it 'must not be present' do
    last_response.wont_be :ok?
  end

  it 'must show the right title' do
    last_response.body.must_have_title 'My App'
  end

  it 'must show the right heading' do
    last_response.body.must_include 'Page Not Found'
  end

end
