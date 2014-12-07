module ActionViewCsv
  class Converter
    attr_reader :content, :delim
    def initialize(content, options)
      @content = content
      # options currently have only Erb stuff, but I'd like...
      # - configurable delimiter...
      @delim = ';'
      # - first line as header bool.
    end

    def src
      out =
      content.split(/\n/).map do |line|
        line = line.split(delim).map do |col|
          "<td>#{col}</td>"
        end.join('')
        "<tr>#{line}</tr>"
      end.join('')
      "<table>#{out}</table>"
    end

  end
end
