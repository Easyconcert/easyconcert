require 'minitest/autorun'

module MiniTest::Assertions

  def assert_has_title(body, title)
    assert body.include?("<title>#{title}</title>"), "Expected html body to include title '#{title}'"
  end

end

String.infect_an_assertion :assert_has_title, :must_have_title, :do_not_flip