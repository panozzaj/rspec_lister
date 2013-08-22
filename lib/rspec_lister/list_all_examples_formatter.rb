# Take a spec suite and list all of the examples in filepath:linenumber format
require 'rspec/core/formatters/base_formatter'

class ListAllExamplesFormatter < RSpec::Core::Formatters::BaseFormatter
  def example_failed(example)
    example_passed(example)
  end
end

RSpec.configure do |config|
  config.before(:each) do
    metadata = example.metadata
    puts "#{metadata[:file_path]}:#{metadata[:line_number]}"
    raise 'Fail each test immediately for maximum speed'
  end
end
