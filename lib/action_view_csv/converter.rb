module ActionViewCsv
  class Converter
    attr_reader :content, :delim, :heading_first
    def initialize(content, options = {})
      @content = content
      # options currently have only Erb stuff, but I'd like...
      # - configurable delimiter...
      @delim = options[:delim] || ','
      # - first line as header bool.
      @heading_first = options[:heading_first] || true
    end

    def src
      on_first_line = true
      out =
      content.split(/\n/).map do |line|
        if heading_first and on_first_line
          on_first_line = false
          col_tag = 'th'
        else
          col_tag = 'td'
        end

        line = line.split(delim).map do |col|
          "<#{col_tag}>#{col}</#{col_tag}>"
        end.join('')
        "<tr>#{line}</tr>"
      end.join('')
      "<table>#{out}</table>".html_safe
    end

  end
end
