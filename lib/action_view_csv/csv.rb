require_relative 'converter'
#require 'action_view/template/handlers/erb'

module ActionViewCsv
  # let's take all of the Erb class
  # it basically contains encoding management that seems rather useful
  # for CSV files
  class Csv #< ActionView::Template::Handlers::Erb
    def default_format
      :html
    end
    def self.call(template)
      raise 'fdf'
      new.call(template)
    end
    def call(template)
      "ActionViewCsv::Converter.new(begin;\"#{template.source}\";end).src"
    end

  end

  #Csv.erb_implementation = ActionViewCsv::Converter
end

ActionView::Template.register_template_handler(:csv, ActionViewCsv::Csv.new)
