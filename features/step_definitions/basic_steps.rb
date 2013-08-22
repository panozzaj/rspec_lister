require 'fileutils'

Given /^I am in the sample Ruby app$/ do
  aruba_dir = File.join('tmp', 'aruba')

  # clear out any old testing data
  FileUtils.rm_rf aruba_dir if Dir.exists? aruba_dir
  FileUtils.mkdir_p aruba_dir
  fixture_files = Dir.glob(File.join('fixtures', 'sample_ruby_app', '*'))
  FileUtils.cp_r fixture_files, aruba_dir
end
