require_relative 'parser'
require_relative 'formatter'

module List2Pivotal
  class CLI
    def self.run(list)
      parser = List2Pivotal::Parser.new()
      formatter = List2Pivotal::Formatter.new()

      stories = parser.parse!(list)
      puts formatter.format!(stories)
    end
  end
end
