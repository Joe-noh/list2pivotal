require_relative 'story'

module List2Pivotal
  class Parser
    def initialize(epic)
      @epic = epic
    end

    def parse!(md)
      small_epic = ""
      stories = []

      md.each_line do |line|
        if line.start_with?("#")
          small_epic = line.gsub(/[#\s\r\n]/, '')
        elsif line.start_with?("-") || line.start_with?("*")
          m = line.match(/\A- (.+?): (\d+)(pt)?/)

          story = Story.new()
          story.title = m[1]
          story.labels = [@epic, small_epic]
          story.estimate = m[2]

          stories << story
        end
      end

      stories
    end
  end
end
