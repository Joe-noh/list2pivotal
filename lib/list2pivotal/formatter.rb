require 'csv'

module List2Pivotal
  class Formatter
    HEADER = %w[Title Labels Estimate]

    def format!(stories)
      lines = stories.map { |s|
        [s.title, s.labels.join(","), s.estimate]
      }

      CSV.generate do |csv|
        csv << HEADER
        lines.each { |line| csv << line }
      end
    end
  end
end
