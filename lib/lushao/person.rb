require 'faraday'
require 'json'

API_PERSON_URL = 'https://api.lusha.co/person?'

module Lushao
  class Person
    attr_reader :emailAddresses, :phoneNumbers

    def initialize(company_or_domain, first_name, last_name,flag_company_or_domain, key)
      @company_or_domain = company_or_domain
      @first_name = first_name
      @last_name = last_name
      @flag_company_or_domain=flag_company_or_domain
      @key = key
    end

    def get_results
      response = apiresponse
      Struct.new(*response.keys).new(*response.values) unless response.empty?
    end

    private

    def apiresponse
      if @flag_company_or_domain == 0
        url = URI.parse(URI.encode("#{API_PERSON_URL}firstName=#{@first_name}&lastName=#{@last_name}&company=#{@company_or_domain}"))
      else
        url = URI.parse(URI.encode("#{API_PERSON_URL}firstName=#{@first_name}&lastName=#{@last_name}&domain=#{@company_or_domain}"))
      end

      response = Faraday.new(url, :headers => {'api_key' => @key}).get
      response.success? ? JSON.parse(response.body, {symbolize_names: true}) : []
    end
  end
end
