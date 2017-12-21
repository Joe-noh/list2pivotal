require 'test/unit'
require 'list2pivotal/parser'

class TestParser < Test::Unit::TestCase
  INPUT = <<~EOS
    ### api

    - one: 3
    - two: 2pt

    ### web

    - one: 1
    - two: 2
  EOS

  def test_parse_markdown_list
    parser = List2Pivotal::Parser.new()

    stories = parser.parse!(INPUT)

    assert { stories[0].title == "one" }
    assert { stories[0].labels == ["api"] }
    assert { stories[0].estimate == "3" }

    assert { stories[1].title == "two" }
    assert { stories[1].labels == ["api"] }
    assert { stories[1].estimate == "2" }

    assert { stories[2].title == "one" }
    assert { stories[2].labels == ["web"] }
    assert { stories[2].estimate == "1" }

    assert { stories[3].title == "two" }
    assert { stories[3].labels == ["web"] }
    assert { stories[3].estimate == "2" }
  end
end
