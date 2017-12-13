require 'test/unit'
require 'list2pivotal/formatter'
require 'list2pivotal/story'

class TestParser < Test::Unit::TestCase
  def setup
    @stories = [
      List2Pivotal::Story.new("one", ["big project", "api"], "feature", "3"),
      List2Pivotal::Story.new("two", ["big project", "api"], "feature", "2"),
      List2Pivotal::Story.new("one", ["big project", "web"], "feature", "1"),
      List2Pivotal::Story.new("two", ["big project", "web"], "feature", "2"),
    ]
  end

  def test_format_stories
    formatter = List2Pivotal::Formatter.new()

    csv = formatter.format!(@stories)

    assert {
      csv == <<~CSV
        Title,Labels,Type,Estimate
        one,"big project,api",feature,3
        two,"big project,api",feature,2
        one,"big project,web",feature,1
        two,"big project,web",feature,2
      CSV
    }
  end
end
