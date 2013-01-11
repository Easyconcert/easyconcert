#encoding: utf-8
require_relative '../support/base_helper'

describe 'The Truth' do

  it 'must be truthy' do
    true.must_be_kind_of TrueClass
    true.to_s.must_equal "true"
    (1 == 1).must_be :==, true
  end

end
