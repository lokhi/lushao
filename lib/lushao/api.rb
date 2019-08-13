require 'uri'

require File.expand_path(File.join(File.dirname(__FILE__), 'person'))


module Lushao
  class Api
    attr_reader :key

  	def initialize(key)
  		@key = key
  	end

    def find_person_with_company(company, first_name, last_name)
      Lushao::Person.new(company, first_name, last_name,0, self.key).get_results
    end

    def find_person_with_domain(domain, first_name, last_name)
      Lushao::Person.new(domain, first_name, last_name,1, self.key).get_results
    end

    def find_company_with_name(name)
      Lushao::Person.new(name,0, self.key).get_results
    end

    def find_company_with_domain(domain)
      Lushao::Person.new(domain,1, self.key).get_results
    end

  end
end
