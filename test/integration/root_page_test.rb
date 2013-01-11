#encoding: utf-8
require_relative '../support/base_helper'
require_relative '../support/integration_helper'

describe 'The Root Page' do

  before do
    visit "/"
  end

  it 'must not be present' do
    last_response.must_be :ok?
  end

  it 'must show the right title' do
    last_response.body.must_have_title 'easyconcert.de'
  end

  it 'must show the right heading' do
    last_response.body.must_include '<span>easy</span>concert unterstützt Musikschaffende'
  end

end
