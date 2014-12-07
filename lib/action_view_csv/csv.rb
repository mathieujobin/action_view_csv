require_relative 'converter'

module ActionView
  class Template
    module Handlers
      # let's take all of the Erb class
      # it basically contains encoding management that seems rather useful
      # for CSV files
      class Csv < Erb
      end

      Csv.erb_implementation = ActionViewCsv::Converter
    end
  end
end
