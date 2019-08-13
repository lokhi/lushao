require 'faraday'
require 'json'

API_PERSON_URL = 'https://api.lusha.co/company?'

module Lushao
  class Person
    attr_reader :description, :domain,:employees,:founded,:founders,:logo,:name,:social,:website

    def initialize(company_or_domain,flag_company_or_domain, key)
      @company_or_domain = company_or_domain
      @flag_company_or_domain = flag_company_or_domain
      @key = key
    end

    def get_results
      response = apiresponse
      Struct.new(*response.keys).new(*response.values) unless response.empty?
    end

    private

    def apiresponse
      if @flag_company_or_domain == 0
        url = URI.parse(URI.encode("#{API_PERSON_URL}company=#{@company_or_domain}"))
      else
        url = URI.parse(URI.encode("#{API_PERSON_URL}domain=#{@company_or_domain}"))
      end

      response = Faraday.new(url, :headers => {'api_key' => @key}).get
      response.success? ? JSON.parse(response.body, {symbolize_names: true}) : []
    end
  end
end
