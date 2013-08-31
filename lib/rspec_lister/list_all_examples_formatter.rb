# Take a spec suite and list all of the examples in filepath:linenumber format
require 'rspec/core/formatters/base_formatter'

def rspec_lister_filename
  ENV['RSPEC_LISTER_TEMPFILE_PATH']
end

class ListAllExamplesFormatter < RSpec::Core::Formatters::BaseFormatter
  # override to catch all of the failed examples
  # (since we raise'd from each of them and want simpler output)
  def example_failed(example)
    example_passed(example)
  end
end

RSpec.configure do |config|
  # write each example to a tempfile for later printing
  config.before(:each) do
    metadata = example.metadata
    File.open(rspec_lister_filename, 'a') do |f|
      f.puts "#{metadata[:file_path]}:#{metadata[:line_number]}"
    end
    raise 'Fail each test immediately for maximum speed'
  end
end
