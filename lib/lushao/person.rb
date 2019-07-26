require 'faraday'
require 'json'

API_PERSON_URL = 'https://api.lusha.co/person?'

module Lushao
  class Person
    attr_reader :emailAddresses, :phoneNumbers

    def initialize(company, first_name, last_name, key)
      @company = company
      @first_name = first_name
      @last_name = last_name
      @key = key
    end

    def get_results
      response = apiresponse
      Struct.new(*response.keys).new(*response.values) unless response.empty?
    end

    private

    def apiresponse
      url = URI.parse(URI.encode("#{API_PERSON_URL}firstName=#{@first_name}&lastName=#{@last_name}&company=#{@company}"))
      response = Faraday.new(url, :headers => {'api_key' => @key}).get
      response.success? ? JSON.parse(response.body, {symbolize_names: true}) : []
    end
  end
end