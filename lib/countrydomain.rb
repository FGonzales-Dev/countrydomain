require "countrydomain/version"
require "yaml"

module Countrydomain
  
  YML_COUNTRYDOMAIN = YAML.load_file(File.join(File.dirname(__FILE__),"countrydomain", "yml", "countrydomain.yml"))


	COUNTRYDOMAIN= YML_COUNTRYDOMAIN.map { |_, v| v }.flatten.compact.sort

end
