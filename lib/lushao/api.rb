require 'uri'

require File.expand_path(File.join(File.dirname(__FILE__), 'person'))


module Lushao
  class Api
    attr_reader :key

  	def initialize(key)
  		@key = key
  	end

    # Person API
    def find_person(company, first_name, last_name)
      Lushao::Person.new(company, first_name, last_name, self.key).get_results
    end


  end
end
