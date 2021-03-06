SPEC_DIR = File.dirname(__FILE__)
FIXTURES_DIR = File.join(SPEC_DIR, "fixtures")

$LOAD_PATH.unshift File.join(SPEC_DIR, "..", "lib")
$LOAD_PATH.unshift SPEC_DIR

require 'wcc/arena'

Dir[File.join(SPEC_DIR, "support", "*.rb")].each do |support_file|
  require "support/#{File.basename(support_file, ".rb")}"
end

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  config.order = 'random'
end
