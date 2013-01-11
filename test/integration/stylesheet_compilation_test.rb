#encoding: utf-8
require_relative '../support/base_helper'
require_relative '../support/integration_helper'

describe 'SASS compilation' do

  before do
    get "/assets/application.css"
  end

  it 'must be present' do
    last_response.must_be :ok?
  end

  it 'must have the correct content type' do
    last_response.headers["Content-Type"].must_include "text/css"
  end

  it 'must have some of the correct content' do
    last_response.body.must_match /\/\*\n\s*Application Stylesheet File/
  end

end
